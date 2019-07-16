val funcionarios = spark.read.json("/user/maria_dev/dados/funcionarios.json")
funcionarios.createOrReplaceTempView("funcionarios")
val qtd_departamentos_funcionarios = spark.sql("SELECT cargo,COUNT(departamento) FROM funcionarios GROUP by cargo")
qtd_departamentos_funcionarios.rdd.saveAsTextFile("/user/maria_dev/spark/contagem_funcionarios_por_departamentos")
