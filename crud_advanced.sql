-- find the baby
-- SELECT * FROM customers WHERE age = (
--     -- first find the maximum slaray
--     SELECT MIN(age) FROM customers
-- );

-- SELECT name, age,
--     CASE 
--         WHEN age > 30 THEN 'boomer'
--         WHEN age > 24 THEN 'zoomer'
--         WHEN age > 18 THEN 'baby'
--         ELSE 'too young for the app'
--     END AS ages
-- FROM customers;

-- simple join
-- SELECT * FROM customers
-- JOIN orders ON customers.id = orders.customer_id;

-- specific col
-- SELECT customers.name, orders.order_num, orders.amount FROM customers
-- JOIN orders ON customers.id = orders.customer_id;

-- with aliasing
-- SELECT banana.name FROM customers banana;
-- SELECT c.name, o.order_num, o.amount FROM customers c
-- FULL OUTER JOIN orders o ON c.id = o.customer_id;

-- unions -- pating two selects together
SELECT id, name FROM customers UNION ALL SELECT id, name FROM subscribers;