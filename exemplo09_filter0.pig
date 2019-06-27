lista_data = LOAD '/user/maria_dev/u.data' AS (usuarioID: int, filmeID: int, classificacao: int, data: int);
cla_filme = FILTER lista_data BY classificacao >= 3.0;
DUMP cla_filme;
