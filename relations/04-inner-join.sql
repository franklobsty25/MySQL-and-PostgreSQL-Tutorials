SELECT u.id, first_name, last_name, street, house_number, name AS city_name
FROM users AS u
INNER JOIN addresses AS a ON u.address_id = a.id
INNER JOIN cities AS c ON a.city_id = c.id;