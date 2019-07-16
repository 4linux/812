-- Etapa 1: Carregar lista de funcionários do HDFS.
cursos_funcionarios = LOAD '/user/maria_dev/dados/funcionarios.txt' USING PigStorage(',') AS (id_func:int, nome:chararray, cargo:chararray, salario:int, departamento:chararray);
-- Etapa 2: Separar funcionários por Departamentos.
group_departamento = GROUP cursos_funcionarios by departamento;
-- Etapa 3: Calcular média de Falarios por Departamentos.
media_salario_departamento = FOREACH group_departamento GENERATE group,AVG(cursos_funcionarios.salario);
-- Etapa 4: Gravar resultado no HDFS.
STORE media_salario_departamento INTO '/user/maria_dev/pig_out/media_salarios_funcionarios' USING PigStorage(',');
