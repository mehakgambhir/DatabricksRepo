# Databricks notebook source
print("Hello World")

# COMMAND ----------

# MAGIC %sql
# MAGIC select "Hello World from SQL"

# COMMAND ----------

# MAGIC %md
# MAGIC # title 1
# MAGIC ## title 2
# MAGIC ### title 3

# COMMAND ----------

# MAGIC %run
# MAGIC ./Includes/Setup

# COMMAND ----------

# MAGIC %fs ls '/databricks-datasets'

# COMMAND ----------

dbutils.help()

# COMMAND ----------

files = dbutils.fs.ls('/databricks-datasets')
display(files)

# COMMAND ----------


