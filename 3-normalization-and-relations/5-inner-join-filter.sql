SELECT users.id, first_name, last_name, street, house_number, cities.name AS city_name
FROM users
INNER JOIN addresses AS addr ON users.address_id = addr.id
INNER JOIN cities ON addr.city_id = cities.id
WHERE cities.id = 1 OR cities.id = 2
ORDER BY users.id DESC;