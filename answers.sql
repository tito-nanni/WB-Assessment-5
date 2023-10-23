SELECT email, FROM customers, ORDER BY email;
SELECT id, FROM orders, WHERE customer_id = 1;
SELECT SUM(num_cupcakes) AS total_unprocessed_cupcakes, FROM orders, WHERE processed = 'f';
SELECT c.name AS name, COALESCE(SUM(o.num_cupcakes), 0) AS sum, FROM cupcakes c, LEFT JOIN orders o ON c.id = o.cupcake_id, GROUP BY c.name, ORDER BY c.name
SELECT c.email AS email, SUM(o.num_cupcakes) AS total, FROM customers c, LEFT JOIN orders o ON c.id = o.customer_id, GROUP BY c.email, ORDER BY total DESC;
SELECT DISTINCT c.fname AS fname, c.lname AS lname, c.email AS email, FROM customers c, JOIN orders o ON c.id = o.customer_id, JOIN cupcakes cp ON o.cupcake_id = cp.id, WHERE cp.name = 'funfetti' AND o.processed = true;