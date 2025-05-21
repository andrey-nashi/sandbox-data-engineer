{{config(materialized="view")}}

select
    g.id as engagement_id,
    c.name as customer_name,
    e.name as employee_name
from {{source("raw", "engagement")}} g
left join {{source("raw", "customer")}} c on c.id=g.customer_id
left join {{source("raw", "employee")}} e on e.id=g.employee_id