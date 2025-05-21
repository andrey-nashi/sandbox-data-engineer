{{config(materialized="ephemeral")}}

with
customer as (select * from {{source("raw", "customer")}}),
employee as (select * from {{source("raw", "employee")}}),
engagement as (select * from {{source("raw", "engagement")}})

select
    g.id as engagement_id,
    upper(c.name) as customer_name,
    c.email as customer_email,
    upper(e.name) as employee_name,
    e.email as employee_email,
    g.date as engagement_date
from engagement g
left join customer c on c.id=g.customer_id
left join employee e on e.id=g.employee_id