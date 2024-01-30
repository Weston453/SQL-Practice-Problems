select t.id, 
  t.heads, 
  t.arms, 
  b.legs, 
  b.tails, 
  case 
    when t.heads > t.arms then 'BEAST'
    when b.tails > b.legs then 'BEAST'
  else
    'WEIRDO'
  end as species
  from top_half t
  join bottom_half b on t.id = b.id
  order by species;