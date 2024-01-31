select name, sum(won) as won, sum(lost) as lost
  from fighters f
  join winning_moves wm on wm.id = f.move_id
  where wm.move != 'Hadoken'
    or wm.move != 'Shouoken'
    or wm.move != 'Kikoken'
  group by f.id
  order by won desc limit 6;