#!/bin/bash

#### Sqoop com suporte ao MySQL

echo 'Copiando Driver MySQL para ativar suporte do Sqoop no Oozie'
hdfs dfs -put -f /usr/local/sqoop/lib/mysql-connector-java-5.1.38-bin.jar /user/maria_dev/share/lib/lib*/sqoop

#### Sqoop com suporte ao Hive
echo 'Copiando arquivos Jars do Hive para o Sqoop'
hdfs dfs -put -f /usr/local/hive/lib/*.jar /user/maria_dev/share/lib/lib*/sqoop

#### Sqoop com suporte ao HBase
echo 'Copiando arquivos Jars do HBase para o Sqoop'
hdfs dfs -put -f /usr/local/pig/lib/h2/hbase* /user/maria_dev/share/lib/lib*/sqoop
hdfs dfs -put -f /usr/local/hbase/lib/hbase* /user/maria_dev/share/lib/lib*/sqoop
hdfs dfs -put -f /usr/local/hbase/lib/metrics* /user/maria_dev/share/lib/lib*/sqoop
hdfs dfs -put -f /usr/local/hbase/lib/high* /user/maria_dev/share/lib/lib*/sqoop
hdfs dfs -put -f /usr/local/hbase/lib/htrace* /user/maria_dev/share/lib/lib*/sqoop

#### Hive com suporte ao HBase
echo 'Copiando arquivos Jars do HBase para o Hive'
hdfs dfs -put -f /usr/local/hive/lib/*hbase* /user/maria_dev/share/lib/lib*/hive
hdfs dfs -put -f /usr/local/hive/lib/metrics* /user/maria_dev/share/lib/lib*/hive
hdfs dfs -put -f /usr/local/hive/lib/hive-hbase* /user/maria_dev/share/lib/lib*/hive
hdfs dfs -put -f /usr/local/hive/lib/htra* /user/maria_dev/share/lib/lib*/hive

#### Hive com suporte ao Tez
echo 'Copiando arquivos Jars do Tez para o Hive'
hdfs dfs -put -f /usr/local/tez/*.jar /user/maria_dev/share/lib/lib*/hive
hdfs dfs -put -f /usr/local/tez/lib/common* /user/maria_dev/share/lib/lib*/hive

#### Pig com suporte ao HBase
echo 'Copiando arquivos Jars do HBase para o Pig'
hdfs dfs -put -f /usr/local/pig/lib/h2/hbase* /user/maria_dev/share/lib/lib*/pig
hdfs dfs -put -f /usr/local/hbase/lib/htrace* /user/maria_dev/share/lib/lib*/pig
hdfs dfs -put -f /usr/local/hbase/lib/metrics* /user/maria_dev/share/lib/lib*/pig
hdfs dfs -put -f /usr/local/hbase/lib/high* /user/maria_dev/share/lib/lib*/pig

#### Pig com suporte ao Tez
echo 'Copiando arquivos Jars do Tez para o Pig'
hdfs dfs -put -f /usr/local/tez/*.jar /user/maria_dev/share/lib/lib*/pig
hdfs dfs -put -f /usr/local/tez/lib/common* /user/maria_dev/share/lib/lib*/pig

#### Pig com suporte ao Hive e HCatalog
echo 'Copiando arquivos Jars do Hive e HCatalog para o Pig'
hdfs dfs -put -f /usr/local/hive/lib/* /user/maria_dev/share/lib/lib*/pig
hdfs dfs -put -f /usr/local/hive/hcatalog/share/hcatalog/* /user/maria_dev/share/lib/lib*/pig
hdfs dfs -put -f /usr/local/hive/hcatalog/share/webhcat/java-client/* /user/maria_dev/share/lib/lib*/pig
hdfs dfs -put -f /usr/local/pig/lib/hive-* /user/maria_dev/share/lib/lib*/pig
hdfs dfs -put -f /usr/local/pig/lib/h2/hive-* /user/maria_dev/share/lib/lib*/pig
