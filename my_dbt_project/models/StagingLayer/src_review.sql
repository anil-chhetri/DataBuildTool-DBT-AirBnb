with raw_review as (
    select * from dev.raw.raw_review   
)

select 
    date as review_date
    , listing_id 
    , reviewer_name
    , sentiment as review_sentiment
    , comments as review_text
from raw_review