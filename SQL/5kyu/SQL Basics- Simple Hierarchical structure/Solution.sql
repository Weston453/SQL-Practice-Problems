with recursive employee_levels as (
  select 1 as level, *
    from employees
    where manager_id is null
  
  union
  
  select el.level + 1 as level, e.*
    from employee_levels el, employees e
    where el.id = e.manager_id
)
select * from employee_levels
  order by level;