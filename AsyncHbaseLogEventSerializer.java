package com.hbase.log.util;

import java.util.ArrayList;  
import java.util.List;  
import java.util.regex.*;
import org.apache.flume.Context;  
import org.apache.flume.Event;  
import org.apache.flume.FlumeException;  
import org.hbase.async.AtomicIncrementRequest;  
import org.hbase.async.PutRequest;  
import org.apache.flume.conf.ComponentConfiguration;  
import org.apache.flume.sink.hbase.SimpleHbaseEventSerializer.KeyType;  
import org.apache.flume.sink.hbase.AsyncHbaseEventSerializer;
import com.google.common.base.Charsets;  
public class AsyncHbaseLogEventSerializer implements AsyncHbaseEventSerializer  
{
    private byte[] table;
    private byte[] colFam;
    private Event currentEvent;
    private byte[][] columnNames;
    private final List<PutRequest> puts = new ArrayList<PutRequest>();
    private final List<AtomicIncrementRequest> incs = new ArrayList<AtomicIncrementRequest>();
    private byte[] currentRowKey;
    private final byte[] eventCountCol = "eventCount".getBytes();
    @Override
    public void initialize(byte[] table, byte[] cf) 
    {
        this.table = table;
        this.colFam = cf;
    }
    @Override
    public void setEvent(Event event) 
    {
        this.currentEvent = event;
        String rowKeyStr = currentEvent.getHeaders().get("rowKey");
    }
    public String[] logTokenize(String event)
    {
        String logEntryPattern = "^([\\d.]+) (\\S+) (\\S+) \\[([\\w:/]+\\s[+\\-]\\d{4})\\] \"(.+?)\" (\\d{3}) (\\d+) \"([^\"]+)\" \"([^\"]+)\"";
        Pattern p = Pattern.compile(logEntryPattern);
        Matcher matcher = p.matcher(event);
        if (!matcher.matches()) 
        {
            System.err.println("Bad log entry (or problem with RE?):");
            System.err.println(event);
            return null;
        }
        String[] columns = new String[matcher.groupCount()+1];
        columns[0]= Long.toString(System.currentTimeMillis());
        for (int i = 1; i <= matcher.groupCount(); i++) 
        {
            columns[i] = matcher.group(i);
        }

        return columns;
    }
    @Override
    public List<PutRequest> getActions() 
    {
        String eventStr = new String(currentEvent.getBody());
        long unixTime = System.currentTimeMillis();
        String[] cols = logTokenize(eventStr);
        puts.clear();
        String[] columnFamilyName;
        byte[] bCol;
        byte[] bFam;
        for (int i = 0; i < cols.length; i++) 
        {
            columnFamilyName = new String(columnNames[i]).split(":");
            bFam = columnFamilyName[0].getBytes();
            bCol = columnFamilyName[1].getBytes();
            if (i ==  0) 
            {
                currentRowKey = cols[i].getBytes();
            }
            PutRequest req = new PutRequest(table, currentRowKey, bFam,
            bCol, cols[i].getBytes());
            puts.add(req);
        }
        return puts;
    }
    @Override
    public List<AtomicIncrementRequest> getIncrements() 
    {
        incs.clear();
        incs.add(new AtomicIncrementRequest(table, "totalEvents".getBytes(), colFam, eventCountCol));
        return incs;
    }
    @Override
    public void cleanUp() 
    {
        table = null;
        colFam = null;
        currentEvent = null;
        columnNames = null;
        currentRowKey = null;
    }
    @Override
    public void configure(Context context) 
    {
        String cols = new String(context.getString("columns"));
        String[] names = cols.split(",");
        columnNames = new byte[names.length][];
        int i = 0;
        for(String name : names) 
        {
            columnNames[i++] = name.getBytes();
        }
    }
    @Override
    public void configure(ComponentConfiguration conf) {}
}
