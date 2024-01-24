select age, count(name) as people_count
   from people
   group by age;