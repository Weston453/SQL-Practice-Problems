select str, 
  case
    when lower(str) = reverse(lower(str)) then true
  else false
  end as res
  from ispalindrome;