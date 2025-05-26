SELECT c.customer_id, c.customer_name, COUNT(o.order_id) AS number_of_orders
FROM customer c
JOIN ordert o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY number_of_orders DESC;