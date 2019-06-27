lista_data = LOAD '/user/maria_dev/u.data' AS (usuarioID: int, filmeID: int, classificacao: int, data: int);

lista_item = LOAD '/user/maria_dev/u.item' USING PigStorage('|') AS (filmeID: int, filmeTitulo: chararray, dataLancamento: chararray, videoLancamento: chararray, link: chararray);

right_outer_self_join = JOIN lista_data BY filmeID RIGHT, lista_item BY filmeID;

DUMP right_outer_self_join;
