{{config(materialized="view")}}

with customer as (
    select
        customer_id as id,
        customer_name as name
    from {{ ref('stg_customer') }}
)
select * from customer