{{
    config(
        materialized = 'incremental',
        on_schema_change= 'fail',
        schema = 'fact'
    )
}}


with src_review as (
    select * from {{ ref('src_reviews')}}
)


select 
    * 
    , {{ dbt_utils.generate_surrogate_key(['listing_id', 'review_date', 'reviewer_name', 'review_text']) }} as review_id
from src_review
where review_text is not null
{% if is_incremental()  %}
    AND review_date > (select max(review_date) from {{ this }}) 
{% endif %}
