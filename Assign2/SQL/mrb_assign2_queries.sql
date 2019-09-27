/* Question 1 Part A */
SELECT CONCAT(customers.first_name, ' ', customers.last_name) as customer, sum(receipts.amount) as total_purchase FROM (customers 
INNER JOIN receipts ON receipts.customer_id = customers.customer_id)
GROUP BY customers.customer_id
ORDER BY total_purchase DESC
LIMIT 4;



/* Question 1 Part B */
SELECT CONCAT(customers.first_name, ' ', customers.last_name) as customer, AVG(receipts.amount) as average_purchase FROM (customers 
INNER JOIN receipts ON receipts.customer_id = customers.customer_id)
GROUP BY customers.customer_id
ORDER BY average_purchase DESC
LIMIT 5;



/* Question 1 Part C */
SELECT CONCAT(customers.first_name, ' ', customers.last_name) as customer, COUNT(receipts.amount) as number_of_purchases FROM (customers 
INNER JOIN receipts ON receipts.customer_id = customers.customer_id)
GROUP BY customers.customer_id
ORDER BY number_of_purchases DESC
LIMIT 3;



/*Question 1 Part D */
SELECT purchase_date as day, COUNT(amount) as number_of_purchases FROM receipts
GROUP BY purchase_date
ORDER BY number_of_purchases DESC
LIMIT 1;



/*Question 1 Part E */
SELECT purchase_date as day, SUM(amount) as profit FROM receipts
GROUP BY purchase_date
ORDER BY profit DESC
LIMIT 1;


/*Question 1 Part F */
SELECT  CONCAT(customers.first_name, ' ', customers.last_name) as customer, receipts.purchase_date as day, SUM(receipts.amount) as total_purchase 
FROM ((receipts INNER JOIN (SELECT purchase_date as busiest_day, COUNT(amount) as purchases FROM receipts
        GROUP BY purchase_date
        ORDER BY purchases DESC
        LIMIT 1) as temp on receipts.purchase_date = temp.busiest_day)
INNER JOIN customers ON customers.customer_id = receipts.customer_id)
GROUP BY purchase_date, receipts.customer_id
ORDER BY total_purchase DESC;


/*Question 1 Part G*/
SELECT CONCAT(customers.first_name, ' ', customers.last_name) as customer FROM ((customers
INNER JOIN receipts on receipts.customer_id = customers.customer_id)
INNER JOIN (SELECT purchase_date as busiest_day, COUNT(amount) as purchases FROM receipts
        GROUP BY purchase_date
        ORDER BY purchases DESC
        LIMIT 1) as temp on receipts.purchase_date = temp.busiest_day)
GROUP BY customers.customer_id
ORDER BY customers.customer_id DESC;


/*Question 2 Part A */ 
SELECT COUNT(*) AS sibling_pairs FROM (SELECT last_name, COUNT(*) AS siblings FROM students
GROUP BY last_name,street_address, city) as temp WHERE temp.siblings >1;


/* Question 2 Part B */ 
SELECT students.first_name, students.last_name FROM students
INNER JOIN (SELECT * FROM (SELECT last_name, street_address, COUNT(*) AS siblings FROM students
GROUP BY last_name,street_address, city) as temp WHERE temp.siblings >1) as sibling_table 
ON sibling_table.last_name = students.last_name AND sibling_table.street_address = students.street_address;


/* Question 2 Part C */
SELECT COUNT(*) as twin_sets FROM (SELECT last_name, COUNT(*) AS siblings FROM students
GROUP BY last_name,street_address, city, birthday) as temp WHERE temp.siblings >1;

/* Question 2 Part D */
SELECT students.first_name, students.last_name FROM students
INNER JOIN (SELECT * FROM (SELECT last_name, street_address, COUNT(*) AS siblings FROM students
GROUP BY last_name,street_address, city, birthday) as temp WHERE temp.siblings >1) as sibling_table 
ON sibling_table.last_name = students.last_name AND sibling_table.street_address = students.street_address;
