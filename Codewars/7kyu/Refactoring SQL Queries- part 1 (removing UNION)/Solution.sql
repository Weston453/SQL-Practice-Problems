select distinct city_name
  from stations 
  where city_name like 'A%'
    or city_name like 'E%'
    or city_name like 'I%'
    or city_name like 'O%'
    or city_name like 'U%'
  order by city_name asc;