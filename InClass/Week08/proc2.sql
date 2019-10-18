DROP PROCEDURE IF EXISTS birthmonth;

DELIMITER //
CREATE PROCEDURE birthmonth(IN bmonth INT)
BEGIN
  SELECT first_name, last_name, birthday
  FROM students WHERE MONTH(birthday) = bmonth;
END //
DELIMITER ;
