select month, 
  case 
    when month <= 3 then 1
    when 4 <= month and month <= 6 then 2
    when 7 <= month and month <= 9 then 3
    else 4
  end as res
  from quarterof;