lista_data = LOAD '/user/maria_dev/u.data' AS (usuarioID: int, filmeID: int, classificacao: int, data: int);
lista_data_ex1 = FOREACH lista_data GENERATE filmeID, classificacao;
DUMP lista_data_ex1;
