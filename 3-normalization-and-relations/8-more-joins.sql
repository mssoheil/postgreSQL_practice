SELECT c.name AS city_name, u.first_name, u.last_name
FROM cities AS c
LEFT JOIN addresses AS addr
ON c.id = addr.city_id
LEFT JOIN users AS u ON u.address_id = addr.id; 