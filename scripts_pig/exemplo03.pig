funcionarios_json = LOAD '/user/maria_dev/funcionarios.json' USING JsonLoader('id_func:int, nome:chararray, cargo:chararray, salario:chararray, departamento:chararray');


DUMP funcionarios_json;

STORE funcionarios_json INTO '/user/maria_dev/arquivo.json' USING JsonStorage();


