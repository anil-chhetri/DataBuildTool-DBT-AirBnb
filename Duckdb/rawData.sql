create schema if not exists raw;

CREATE TABLE if not exists raw.raw_listing AS
    FROM read_csv('s3://dbtlearn/listings.csv');

CREATE TABLE if not exists raw.raw_review AS
    FROM read_csv('s3://dbtlearn/reviews.csv');

CREATE TABLE if not exists raw.raw_host AS
    FROM read_csv('s3://dbtlearn/hosts.csv');