SELECT customer_id, SUM(amount) FROM receipts
GROUP BY customer_id;