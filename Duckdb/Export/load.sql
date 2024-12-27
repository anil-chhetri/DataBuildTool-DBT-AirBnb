COPY raw.raw_host FROM 'Duckdb/Export/raw_raw_host.parquet' (FORMAT 'parquet');
COPY raw.raw_listing FROM 'Duckdb/Export/raw_raw_listing.parquet' (FORMAT 'parquet');
COPY raw.raw_review FROM 'Duckdb/Export/raw_raw_review.parquet' (FORMAT 'parquet');
COPY "ref".seed_full_moon_dates FROM 'Duckdb/Export/ref_seed_full_moon_dates.parquet' (FORMAT 'parquet');

