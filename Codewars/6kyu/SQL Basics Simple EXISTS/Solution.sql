select id, name 
  from departments d
  where exists (
    select price 
      from sales s
      where s.department_id = d.id
        and price > 98.00
  );