lista_data = LOAD '/user/maria_dev/u.data' AS (usuarioID: int, filmeID: int, classificacao: int, data: int);

SPLIT lista_data INTO classificacao_menores if classificacao<3.0, classificacao_maiores if classificacao>3.0;

lista_menores = LIMIT classificacao_menores 5;

lista_maiores = LIMIT classificacao_maiores 5;

DUMP lista_menores;

DUMP lista_maiores;
