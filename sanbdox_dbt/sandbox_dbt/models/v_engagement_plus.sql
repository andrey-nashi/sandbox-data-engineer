{{config(materialized="view")}}

with customer as (
    select
        customer_name,
        employee_name
    from {{ ref('ep_engagement_plus') }}
)
select * from customer