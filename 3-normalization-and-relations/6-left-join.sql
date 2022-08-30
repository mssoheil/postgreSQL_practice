SELECT * FROM 
addresses AS addr
LEFT JOIN users as u
ON addr.id = u.address_id
LEFT JOIN cities AS c
ON c.id = addr.city_id;