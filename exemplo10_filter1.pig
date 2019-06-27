lista_data = LOAD '/user/maria_dev/u.data' AS (usuarioID: int, filmeID: int, classificacao: int, data: int);
teste = FILTER lista_data BY filmeID > 100 AND classificacao == 3;
DUMP teste;
