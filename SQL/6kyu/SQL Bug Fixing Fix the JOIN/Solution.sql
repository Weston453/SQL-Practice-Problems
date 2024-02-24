select
  j.job_title,
  round(sum(j.salary) / count(p), 2)::float as average_salary,
  count(p.id) as total_people,
  round(sum(j.salary), 2)::float as total_salary
  from people p
    join job j on j.people_id = p.id
  group by j.job_title
  order by average_salary desc;