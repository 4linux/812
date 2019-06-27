lista_data = LOAD '/user/maria_dev/u.data' AS (usuarioID: int, filmeID: int, classificacao: int, data: int);
data_unique = DISTINCT lista_data;
DUMP data_unique;

lista_item = LOAD '/user/maria_dev/u.item' USING PigStorage('|') AS (filmeID: int, filmeTitulo: chararray, dataLancamento: chararray, videoLancamento: chararray, link: chararray);
item_unique = DISTINCT lista_item;
DUMP item_unique;
