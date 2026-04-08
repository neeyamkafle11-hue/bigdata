select *
from customer;

SELECT *
FROM `Order`
WHERE status='completed';

SELECT o.order_id, o.order_date, c.first_name, c.last_name, o.total_amount, o.status
FROM `Order` AS o
INNER JOIN Customer AS c ON o.customer_id = c.customer_id;

SELECT p.name, SUM(oi.quantity * oi.unit_price) AS revenue
FROM OrderItem AS oi
INNER JOIN Product AS p ON oi.product_id = p.product_id
GROUP BY p.name
ORDER BY revenue DESC;

SELECT c.first_name, c.last_name, SUM(o.total_amount) AS total_spent
FROM Customer AS c
INNER JOIN `Order` AS o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
HAVING total_spent > 500;



