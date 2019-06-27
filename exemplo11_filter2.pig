lista_item = LOAD '/user/maria_dev/u.item' USING PigStorage('|') AS (filmeID: int, filmeTitulo: chararray, dataLancamento: chararray, videoLancamento: chararray, link: chararray);
name_filme = FILTER lista_item BY (filmeTitulo matches '.*Story.*');
DUMP name_filme;
