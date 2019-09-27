CREATE TABLE classes (
  class VARCHAR(10) NOT NULL,
  name VARCHAR(64),
  credits INT,
  PRIMARY KEY (class)
);

INSERT INTO classes (class, name, credits) VALUES
  ('CS 118','Fundamentals of Computer Programming', 3),
  ('CS 121','Introduction to Computer Game Systems', 3),
  ('CS 125','Computer Science I', 4),
  ('CS 125L','Computer Science I Laboratory', 0),
  ('CS 195','Digital Illustration', 3),
  ('CS 233','Interactive Media I', 3),
  ('CS 303','Network Security', 3),
  ('CS 315','Data Structures and Analysis of Algorithms', 3),
  ('CS 333','Interactive Media II', 3),
  ('CS 420','Operating Systems', 3);

  
CREATE TABLE class_schedule (
  class VARCHAR(10) NOT NULL,
  section INT NOT NULL,
  days VARCHAR(4),
  start TIME,
  end TIME,
  room VARCHAR(16),
  PRIMARY KEY (class, section)
);

INSERT INTO class_schedule (class, section, days, start, end, room) VALUES
  ('CS 118',1,'MWF',080000,085000,'STEM 123'),
  ('CS 118',2,'MWF',090000,095000,'KING 128'),
  ('CS 118',3,'TTH',074500,090000,'KING 128'),
  ('CS 121',1,'TTH',091000,102500,'BLDG 61'),
  ('CS 125',1,'MWF',110000,115000,'KING 126'),
  ('CS 125',2,'MWF',100000,105000,'STEM 123'),
  ('CS 125L',50,'TTH',145000,160500,'KING 128'),
  ('CS 125L',52,'TTH',090000,102500,'KING 128'),
  ('CS 195',1,'MWF',140000,145000,'BLDG 61'),
  ('CS 233',1,'MWF',090000,095000,'BLDG 61'),
  ('CS 303',1,'TTH',103500,115000,'BLDG 52B'),
  ('CS 315',1,'MWF',130000,135000,'STEP 123'),
  ('CS 333',1,'TTH',103500,115000,'BLDG 61'),
  ('CS 420',1,'TTH',120000,131500,'BLDG 54'),
  ('CS 420',2,'TTH',145000,160500,'BLDG 52A');

;; INSERT INTO class_schedule (class, section, days, start, end, room) VALUES
;;   ('CS 118',1,'MWF','08:00:00','08:50:00','STEM 123'),
;;   ('CS 118',2,'MWF','09:00:00','09:50:00','KING 128'),
;;   ('CS 118',3,'TTH','07:45:00','09:00:00','KING 128'),
;;   ('CS 121',1,'TTH','09:10:00','10:25:00','BLDG 61'),
;;   ('CS 125',1,'MWF','11:00:00','11:50:00','KING 126'),
;;   ('CS 125',2,'MWF','10:00:00','10:50:00','STEM 123'),
;;   ('CS 125L',50,'TTH','14:50:00','16:05:00','KING 128'),
;;   ('CS 125L',52,'TTH','09:10:00','10:25:00','KING 128'),
;;   ('CS 195',1,'MWF','14:00:00','14:50:00','BLDG 61'),
;;   ('CS 233',1,'MWF','09:00:00','09:50:00','BLDG 61'),
;;   ('CS 303',1,'TTH','10:35:00','11:50:00','BLDG 52B'),
;;   ('CS 315',1,'MWF','13:00:00','13:50:00','STEP 123'),
;;   ('CS 333',1,'TTH','10:35:00','11:50:00','BLDG 61'),
;;   ('CS 420',1,'TTH','12:00:00','13:15:00','BLDG 54'),
;;   ('CS 420',2,'TTH','14:50:00','16:05:00','BLDG 52A');


