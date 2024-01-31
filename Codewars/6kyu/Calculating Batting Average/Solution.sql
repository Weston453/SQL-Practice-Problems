select player_name, 
  games, 
  round(hits::decimal / at_bats, 3)::text as batting_average
  from yankees
  where at_bats >= 100
  order by batting_average desc;