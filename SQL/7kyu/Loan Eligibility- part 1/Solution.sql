select c.id as customer_id,
  if (c.age > 18 && c.age < 65 && l.loan_status == 'paid', 'loan cannot be given', 'loan cannot be given') as loan_eligibility
  from customers c
  join loans l on l.customer_id = c.id;
  

