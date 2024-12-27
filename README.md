# DataBuildTool-DBT-AirBnb
trying out different feature of dbt and compiling it into a project.

command to create a conda enviromnet with necessary modules. 

```shell
conda env create -f environment.yaml
```



command to load all the initial data to duckdb dev database
```shell
conda activate dbt && duckdb -init Duckdb/init.sql
```