{{config(materialized="view")}}

with
------------------------------------------------------------
source_employee as
(
    select *
    from {{source("raw", "employee")}}
),
------------------------------------------------------------
un_employee as
(
    select *
    from (
        select *,
               row_number() over (partition by name order by id) as row_num
        from source_employee
    ) t
    where row_num = 1
)
------------------------------------------------------------
select id, name, department, email
from un_employee