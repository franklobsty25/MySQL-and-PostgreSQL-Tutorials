-- SELECT id
-- FROM customers
-- WHERE first_name = 'Max' OR first_name = 'Manu';

-- SELECT id
-- FROM customers
-- WHERE first_name IN('Max', 'Manu');

-- SELECT id, first_name
-- FROM customers
-- WHERE first_name NOT IN('Max', 'Manu');

SELECT email
FROM customers
WHERE id IN(
    SELECT id
    FROM orders
);