DROP PROCEDURE IF EXISTS get_customers;
delimiter //
CREATE PROCEDURE get_customers()
BEGIN
  SELECT * FROM customers;
END //
DELIMITER ;
