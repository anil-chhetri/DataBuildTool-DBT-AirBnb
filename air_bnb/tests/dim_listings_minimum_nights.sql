select * 
from {{ ref('dim_listings_cleansed') }}
where minimum_nights < 1 
--must give 0 result to pass