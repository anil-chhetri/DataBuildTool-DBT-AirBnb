.open './air_bnb/development_db.duckdb'
INSTALL httpfs;
LOAD httpfs;
SET s3_region='us-west-2';
.prompt '⚫◗ '
.read './Duckdb/rawData.sql'