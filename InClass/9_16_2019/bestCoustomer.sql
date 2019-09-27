SELECT CONCAT(first_name, " ", last_name) as customer_name, temp.total FROM customers 
INNER JOIN (
  SELECT customer_id, SUM(amount) as total FROM receipts
GROUP BY customer_id) as temp ON temp.customer_id = customers.customer_id 
ORDER BY temp.total DESC
LIMIT 4;
