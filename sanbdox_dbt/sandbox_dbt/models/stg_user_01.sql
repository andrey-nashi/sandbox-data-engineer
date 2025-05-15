{{config(materialized="view", schema="demo")}}

with users_x as (
    select
        id as user_id,
        name as user_name,
        industry as industry,
        email as email
    from {{source("raw", "customer")}}
)
select * from users_x