CREATE TABLE myhomes (
	streetAddress VARCHAR(64),
	city VARCHAR(32),
	province VARCHAR(32),
  zipcode VARCHAR(32),
	country VARCHAR(32), 
	bedrooms TINYINT(10),
	bathrooms TINYINT(10),
  squareFeet MEDIUMINT(10));
INSERT INTO myhomes VALUES('123 Main Street', 'Seattle', 'Washington', 98503, 'United States', 1, 1, 950);
INSERT INTO myhomes VALUES('2842 Calais Lane', 'Olympia', 'Washington', 98502,  'United States', 4, 2, 2100);
INSERT INTO myhomes VALUES('3709 Fain Street', 'Prescott', 'Arizona', 86301,  'United States', 2, 1, 1200);
INSERT INTO myhomes VALUES('783 Fake Street', 'Fort Worth', 'Texas', 56702,  'United States', 2, 2, 1120);
INSERT INTO myhomes VALUES('1983 Skunk Lane', 'Honolulu', 'Hawaii', 11213,  'United States', 2, 2, 1500);
INSERT INTO myhomes VALUES('811 South Monsanto Street', 'Westport', 'Washington', 95083,  'United States', 2,3, 1100);
INSERT INTO myhomes VALUES('12 Hickory Street', 'Montgomery', 'Minnesota', 50312,  'United States', 3, 2,2000);
INSERT INTO myhomes VALUES('13 600 Road', 'Raleigh', 'North Carolina', 60312,  'United States', 2, 3, 1200);
