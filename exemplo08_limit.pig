lista_data = LOAD '/user/maria_dev/u.data' AS (usuarioID: int, filmeID: int, classificacao: int, data: int);
dados_limit = LIMIT lista_data 5;
DUMP dados_limit;
