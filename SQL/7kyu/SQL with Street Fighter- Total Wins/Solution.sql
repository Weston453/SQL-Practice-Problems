select name, sum(won) as won, sum(lost) as lost
  from fighters f
  join winning_moves wm on wm.id = f.move_id
  where wm.move not in ('Hadoken', 'Shouoken', 'Kikoken')
  group by name
  order by won desc limit 6;