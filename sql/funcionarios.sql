BEGIN;

CREATE TABLE funcionarios (
  id int NOT NULL AUTO_INCREMENT,
  nome varchar(255),
  cargo varchar(255),
  salario integer,
  departamento varchar(255),
  PRIMARY KEY (id)
);

INSERT INTO funcionarios (nome, cargo, salario, departamento) VALUES ('Marcio Santos', 'Analista', 5000, 'Projetos'), ('Bruno Garcia', 'Instrutor', 5000, 'Treinamento'),('Celia Silva','Vendedora',4800,'Vendas'),('Beatriz Dias', 'Gerencia', 5500, 'Recursos Humanos'),('Sandro Correia', 'Instrutor', 4200, 'Treinamento'),('Leticia Santana', 'Analista', 5100, 'Projetos'),('Cacio Farias', 'Analista', 5100, 'Projetos'),('Cezar Maia', 'Gerencia', 7000, 'Administracao'),('Amanda Nunes', 'Vendedora', 3500, 'Vendas'),('Paula Priore', 'Vendedora', 3700, 'Vendas'),('Carla Neto', 'Analista', 4000, 'Projetos'),('Marcia Costa', 'Vendedora', 2700, 'Vendas'),('Luciana Prado','Analista',4100,'Recursos Humanos'),('Roberta Amaral','Vendedora',2800,'Vendas'),('Rogerio Ribeiro','Instrutor',4000,'Treinamento'),('Rosana Rocha','Vendedora',3000,'Vendas'),('Claudio Queiroz','Analista',6500,'Projetos'),('Diego Chaves','Gerencia',7500,'Administracao'),('Sergio Nogueira','Instrutor',5300,'Treinamento'),('Samantha Reis','Vendedora',4000,'Vendas');

COMMIT;
