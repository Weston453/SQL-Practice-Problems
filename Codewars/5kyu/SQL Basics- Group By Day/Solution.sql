select date(created_at) as day, description, count(description) as count
  from events
  where name = 'trained'
  group by day, description;