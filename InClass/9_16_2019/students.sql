/* names of students who are twins or triplets */
CREATE TABLE students (
    student_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(16),
    last_name VARCHAR(24),
    birthday DATE,
    street_address VARCHAR(128),
    city VARCHAR(32),
    PRIMARY KEY (student_id));

INSERT INTO students
  (first_name, last_name, birthday, street_address, city) VALUES
    ('John','Jones','2000-12-17','250 Pines Blvd.','Pembroke Pines'),
    ('Mark','Bacon','2000-04-12','1270 Walnut St.','Prarie Bluff'),
    ('Bill','Carlson','1999-07-06','250 Pines Blvd.','Pembroke Pines'),
    ('Jean','Carlson','1999-07-06','250 Pines Blvd.','Pembroke Pines'),
    ('Leonard','Cook','2000-09-14','8046 Maple St.','Highland Park'),
    ('William','Markham','1999-07-06','1600 Sylvan Ln.','Lake Forest'),
    ('Sam','Cook','1998-10-13','8046 Maple St.','Highland Park'),
    ('Fred','Williams','1999-07-08','722 Oack Knoll','Arlington'),
    ('Sally','Fillmore','2000-03-25','1215 Carrington St.','Decatur'),
    ('Mary','Jones','1999-11-13','520 15th St.','Denver'),
    ('Phyllis','Jones','1999-11-13','1940 Grant St.','Denver');
