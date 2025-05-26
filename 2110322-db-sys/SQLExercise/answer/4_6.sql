SELECT c.customer_id, c.customer_name
FROM customer c
JOIN ordert o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY COUNT(o.order_id) DESC
LIMIT 1;
