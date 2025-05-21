{{config(materialized="view")}}

with customer as (
    select
        id as customer_id,
        name as customer_name,
        industry as customer_industry,
        email as customer_email
    from {{source("raw", "customer")}}
)
select * from customer