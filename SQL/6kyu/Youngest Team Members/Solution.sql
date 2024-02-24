select distinct on (team)
  *
  from employees
  order by team asc, birth_date desc;
