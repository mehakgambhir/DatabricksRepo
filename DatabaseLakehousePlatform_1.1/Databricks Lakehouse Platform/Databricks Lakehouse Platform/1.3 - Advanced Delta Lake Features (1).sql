-- Databricks notebook source
DESCRIBE HISTORY hive_metastore.default.employees

-- COMMAND ----------

SELECT * 
FROM hive_metastore.default.employees VERSION AS OF 1

-- COMMAND ----------

SELECT * FROM hive_metastore.default.employees@v1

-- COMMAND ----------

DELETE FROM hive_metastore.default.employees

-- COMMAND ----------

SELECT * FROM hive_metastore.default.employees

-- COMMAND ----------

RESTORE TABLE hive_metastore.default.employees TO VERSION AS OF 2 

-- COMMAND ----------

SELECT * FROM hive_metastore.default.employees

-- COMMAND ----------

DESCRIBE HISTORY hive_metastore.default.employees

-- COMMAND ----------

DESCRIBE DETAIL hive_metastore.default.employees

-- COMMAND ----------

OPTIMIZE hive_metastore.default.employees
ZORDER BY id

-- COMMAND ----------

DESCRIBE DETAIL hive_metastore.default.employees

-- COMMAND ----------

DESCRIBE HISTORY hive_metastore.default.employees

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employees'

-- COMMAND ----------

VACUUM hive_metastore.default.employees

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employees'

-- COMMAND ----------

VACUUM hive_metastore.default.employees RETAIN 0 HOURS

-- COMMAND ----------

SET spark.databricks.delta.retentionDurationCheck.enabled = false;

-- COMMAND ----------

VACUUM hive_metastore.default.employees RETAIN 0 HOURS

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employees'

-- COMMAND ----------

SELECT * FROM hive_metastore.default.employees@v1

-- COMMAND ----------

DROP TABLE employees

-- COMMAND ----------

SELECT * FROM employees

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employees'

-- COMMAND ----------


