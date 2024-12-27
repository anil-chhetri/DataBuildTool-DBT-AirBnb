select 
* 
from {{ ref("dim_listings_cleansed") }} as l
left join {{ ref('fact_reviews') }} as r on l.listing_id = r.listing_id
where r.review_date::date - l.created_at::date < 0
limit 1