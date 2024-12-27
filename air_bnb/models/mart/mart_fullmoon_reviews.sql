with fact_review as (
    select * from {{ ref('fact_reviews') }}
), full_moon_dates as (
    select * from {{ ref('seed_full_moon_dates') }}
)

select 
      r.*
    , case when d.full_moon_date is null then 'not full moon' else 'full moon' end as is_full_moon
from fact_review as r 
left join full_moon_dates as d 
    on r.review_date::date = d.full_moon_date + 1