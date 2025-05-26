SELECT DISTINCT c.customer_id, c.customer_name
FROM customer c
JOIN ordert o ON c.customer_id = o.customer_id
WHERE o.order_date BETWEEN '2020-01-10 00:00:00' AND '2020-01-15 23:59:59'
GROUP BY c.customer_id, c.customer_name
ORDER BY c.customer_id;