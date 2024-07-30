# DataBuildTool-DBT-AirBnb
trying out different feature of dbt and compiling it into a project.


command used for creating environment in github. 

```shell
conda create -n dbt-test python=3.12
```

installing dbt core and duckdb.

```shell
    pip install dbt-core dbt-duckdb
```


installing harlequin to query and connect duckdb.

```shell
    pipx install harlequin
```


reading data from s3 buckets to duckdb.
```sql
create schema raw
```

```sql
CREATE TABLE dev.raw.raw_listing AS
    FROM read_csv('s3://dbtlearn/listings.csv');

CREATE TABLE dev.raw.raw_review AS
    FROM read_csv('s3://dbtlearn/reviews.csv');

CREATE TABLE dev.raw.raw_host AS
    FROM read_csv('s3://dbtlearn/hosts.csv');
```