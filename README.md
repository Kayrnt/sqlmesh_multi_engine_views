# SQLMesh multi engine views proof of concept

This project is a test to see if it is possible to create a multi engine view using SQLMesh.

The goal is to set up the same view in 4 different engines:
- DuckDB
- MySQL
- Spark (Iceberg)
- BigQuery

The source data would be the "same one": same table schema but different setup where schema/table names might vary.

## Requirement

You need to install SQLMesh and the required dependencies for each engine:
```
pip install "sqlmesh[mysql,spark,bigquery,ui]"
```

*Mysql*
You need a mysql server running with a root account without password (or update the configuration in the config.yml).

*BigQuery*
You need to set:
- (required) `STORAGE_PROJECT` environment variable to the project id where the dataset will be created
- (optional) `EXECUTION_PROJECT` environment variable to the project id where the query will be executed

Easiest way to do so is to inline it in the command such as `STORAGE_PROJECT=your_project_id sqlmesh --gateway bq plan`.


## Running

Use plan on each gateway to create the view:
```
sqlmesh --gateway mysql plan
```
