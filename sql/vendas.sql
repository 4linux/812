BEGIN;

CREATE TABLE vendas (
  id int NOT NULL AUTO_INCREMENT,
  cliente varchar(255),
  tipo_curso varchar(255),
  data_venda date,
  valor_venda int,
  id_vend int,
  PRIMARY KEY (id)
);


INSERT INTO vendas (cliente, tipo_curso, data_venda, valor_venda, id_vend) VALUES ('System Corp','Presencial','2015-10-25',42000,20),('Trends Admin','Presencial','2016-04-16',55000,9),('Octa Core','Online','2016-11-07',21000,3),('Sistemik 1000','Presencial','2015-06-10',38000,12),('Aster Magazine','Online','2015-09-19',29000,20),('Blue Company','Online','2016-07-08',30000,14),('Consul TI','Online','2015-06-29',18000,14),('Datacenter Sys','Presencial','2016-05-03',60000,16),('Make Kernel','Presencial','2016-11-17',55000,9),('Tux Support','Presencial','2015-08-05',47000,3),('Dexter Corp','Online','2015-01-27',19000,9),('Flex Mobile','Presencial','2015-06-22',46000,16),('Five TI','Presencial','2016-10-21',44000,12),('Midnight Ltda','Online','2015-11-16',42000,20),('Cloud ME','Online','2015-09-15',34000,3),('DevOps Corp','Presencial','2015-11-24',52000,12),('Core System','Online','2016-02-26',41000,12),('Byte Company','Online','2015-03-03',17000,16),('Master Cloud','Online','2016-04-09',15000,20),('Cluster Data','Presencial','2015-01-12',36000,3);

COMMIT;
