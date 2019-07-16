-- Cria Tabela Funcionarios
CREATE TABLE funcionarios (id_func int, nome string, cargo string, salario int, departamento string) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n';
-- Carregar na tabela Funcionarios dados no formato JSON */
LOAD DATA LOCAL INPATH '/home/maria_dev/dados/funcionarios.txt' INTO TABLE funcionarios;
-- Lista todos os dados da Tabela Funcionarios */
SELECT * FROM funcionarios;
-- Lista funcionarios onde o nome começa com a letra C */
SELECT * FROM funcionarios WHERE Nome LIKE 'C%';
-- Lista funcionarios onde o salario é maior que 5000 */
SELECT * FROM funcionarios WHERE Salario > 5000;
-- Lista os dados da Tabela Funcionarios onde o nome começa com a letra C e o salario é maior que 5000 */
SELECT * FROM funcionarios WHERE Nome LIKE 'C%' AND Salario > 5000;
