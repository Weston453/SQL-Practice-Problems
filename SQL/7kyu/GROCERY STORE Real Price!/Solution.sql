select name, weight, price, round((price*1000 / weight)::numeric, 2)::float as price_per_kg
  from products
  order by price_per_kg, name asc;