select * 
  from students 
  where quality1 = 'evil' and quality2 = 'cunning'
    and quality1 = 'cunning' and quality2 = 'evil'
    and quality1 = 'brave' and quality2 != 'evil'
    and quality1 = 'studious' or quality2 = 'intelligent'
    and quality1 = 'hufflepuff' or quality2 = 'hufflepuff';