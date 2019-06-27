lista_item = LOAD '/user/maria_dev/u.item' USING PigStorage('|') AS (filmeID: int, filmeTitulo: chararray, dataLancamento: chararray, videoLancamento: chararray, link: chararray);
lista_item_ex1 = FOREACH lista_item GENERATE (chararray)filmeID;
DUMP lista_item_ex1;
