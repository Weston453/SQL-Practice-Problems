select p.*, c.name as company_name
  from products p
  join companies c on c.id = p.company_id;