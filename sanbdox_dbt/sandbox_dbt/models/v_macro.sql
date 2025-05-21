{{config(materialized="view")}}

with customer as (
    select
        customer_id as id,
        customer_name as name,
        {{ current_date_macro() }} as current_date
    from {{ ref('stg_customer') }}
)
select * from customer