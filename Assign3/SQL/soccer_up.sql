CREATE TABLE participant (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(32),
    last_name VARCHAR(32),
    phone_number CHAR(10),
    PRIMARY KEY (id)
);

CREATE TABLE team (
    id INT NOT NULL AUTO_INCREMENT,
    team_name VARCHAR(32),
    coach_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY(coach_id) REFERENCES  participant(id) ON DELETE CASCADE
);

CREATE TABLE roster (
    participant_id INT NOT NULL,
    team_id INT NOT NULL,
    FOREIGN KEY(participant_id) REFERENCES participant(id) ON DELETE CASCADE,
    FOREIGN KEY(team_id) REFERENCES team(id) ON DELETE CASCADE
);

CREATE TABLE game (
    id INT NOT NULL AUTO_INCREMENT,
    arrival DATETIME,
    location VARCHAR(32),
    PRIMARY KEY (id)
);

CREATE TABLE schedule (
   team_id INT,
   game_id INT,
   is_host INT NOT NULL DEFAULT 0,
   FOREIGN KEY(team_id) REFERENCES team(id) ON DELETE CASCADE,
   FOREIGN KEY(game_id) REFERENCES game(id) ON DELETE CASCADE
   
);

INSERT INTO participant (first_name, last_name, phone_number) VALUES
('Mike', 'Burrell', '9929525992'),
('Lillian', 'Stoneman', '2490643179'),
('Davis', 'Davis', '4980164298'),
('Sam', 'Joshua', '8258723859'),
('Burrell', 'Prieur', '6496249374'),
('Sam', 'Mark', '1701342688'),
('Charlie', 'Amber', '2260639556'),
('Lillian', 'Anna', '7671274420'),
('Mark', 'Lillian', '8508411338'),
('Scarbarough', 'Van Hilst', '7703048958'),
('Van Hilst', 'Grobmeir', '3582587976'),
('Drew', 'Prieur', '2791601509'),
('Seiwert', 'Davis', '3845721179'),
('Amber', 'Sam', '2016418935'),
('David', 'Drew', '2378918177'),
('Brian', 'Kaylie', '9194836990'),
('Stoneman', 'Kaylie', '6461017591'),
('Anna', 'Drew', '2743934491'),
('Kaylie', 'Kaylie', '6985589353'),
('Sam', 'Burrell', '8862916723'),
('Amber', 'Mark', '2360273801'),
('Joshua', 'Amber', '6674260405'),
('Sam', 'Charlie', '8977245313'),
('David', 'Stoneman', '2700998166'),
('Mike', 'Drew', '6044157791'),
('Sam', 'Mark', '7252968926'),
('Joshua', 'Heather', '3423773497'),
('Drew', 'Heather', '9133145717'),
('Charlie', 'Stoneman', '1028814767'),
('Sam', 'Prieur', '1543689019'),
('Mike', 'Drew', '9499695681'),
('Seiwert', 'Mike', '9436041097'),
('Stoneman', 'Brian', '8496076853'),
('Drew', 'Drew', '7302306152'),
('Amber', 'Heather', '1357210568'),
('Sam', 'Sam', '8391622274'),
('Grobmeir', 'Charlie', '8761140337'),
('Stoneman', 'Prieur', '5998332840'),
('David', 'Joshua', '3354271288'),
('Van Hilst', 'Van Hilst', '2760968317'),
('Anna', 'Brian', '7629663778'),
('Amber', 'Marriot', '7573638527'),
('Mike', 'Grobmeir', '4074932382'),
('Jousha', 'Van Hilst', '7171979734'),
('Davis', 'Sam', '2445672606'),
('Brian', 'Van Hilst', '1434361151'),
('Scarbarough', 'Seiwert', '4751634546'),
('Van Hilst', 'Anna', '1122513800'),
('Kaylie', 'Seiwert', '4307286021'),
('Charlie', 'Van Hilst', '8453858447'),
('Davis', 'Kaylie', '7560423171'),
('Sam', 'Seiwert', '7389840831'),
('Prieur', 'Prieur', '1962444505'),
('Mike', 'Grobmeir', '5046001361'),
('Burrell', 'Brian', '8206478689'),
('Seiwert', 'Marriot', '3078647342'),
('Joshua', 'Drew', '8246566975'),
('Grobmeir', 'Kaylie', '6358477062'),
('David', 'Burrell', '6229241205'),
('Heather', 'Mike', '6453207398'),
('Sam', 'Mark', '5476133600'),
('Amber', 'Heather', '3306264938'),
('Mark', 'Heather', '4168265157'),
('Davis', 'Brian', '6809435487'),
('Lillian', 'Mike', '4894097441');

INSERT INTO team (team_name, coach_id) VALUES
('Sharks', 1),
('Whales', 2),
('Pirhanas', 3),
('Eels', 4),
('Salmon', 5),
('Porpoise', 6),
('Otters', 7);

INSERT INTO roster VALUES
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(32, 4),
(33, 4),
(34, 4),
(35, 4),
(36, 4),
(37, 4),
(38, 4),
(39, 4),
(40, 5),
(41, 5),
(42, 5),
(43, 5),
(44, 5),
(45, 5),
(46, 5),
(47, 5),
(48, 6),
(49, 6),
(50, 6),
(51, 6),
(52, 6),
(53, 6),
(54, 6),
(55, 6),
(56, 7),
(57, 7),
(58, 7),
(59, 7),
(60, 7),
(61, 7),
(62, 7),
(63, 7);

INSERT INTO game (arrival, location) VALUES 
('2019-09-14 09:00:00', 'Pioneer Park'), /*1v2*/
('2019-09-21 09:00:00', 'Pioneer Park'), /*1v3*/
('2019-09-28 09:00:00', 'Pioneer Park'), /*1v4*/
('2019-10-05 09:00:00', 'Pioneer Park'), /*1v5*/
('2019-10-12 09:00:00', 'Pioneer Park'), /*1v6*/
('2019-10-19 09:00:00', 'Pioneer Park'), /*1v7*/
('2019-09-14 09:00:00', 'Pioneer Park'), /*2v3*/
('2019-09-21 09:00:00', 'Pioneer Park'), /*2v4*/
('2019-09-28 09:00:00', 'Pioneer Park'), /*2v5*/
('2019-10-05 09:00:00', 'Pioneer Park'), /*2v6*/
('2019-10-19 09:00:00', 'Pioneer Park'), /*2v7*/
('2019-09-14 09:00:00', 'Pioneer Park'), /*3v4*/
('2019-09-21 09:00:00', 'Pioneer Park'), /*3v5*/
('2019-09-28 09:00:00', 'Pioneer Park'), /*3v6*/
('2019-10-05 09:00:00', 'Pioneer Park'), /*3v7*/
('2019-09-14 09:00:00', 'Pioneer Park'), /*4v5*/
('2019-09-21 09:00:00', 'Pioneer Park'), /*4v6*/
('2019-09-28 09:00:00', 'Pioneer Park'), /*4v7*/
('2019-09-14 09:00:00', 'Pioneer Park'), /*5v6*/
('2019-09-28 09:00:00', 'Pioneer Park'), /*5v7*/
('2019-09-14 09:00:00', 'Pioneer Park'); /*6v7*/

INSERT INTO schedule (team_id, game_id, is_host) VALUES
(1,1,1),
(2,1,0),
(3,2,1),
(1,2,0),
(1,3,1),
(4,3,0),
(5,4,1),
(1,4,0),
(1,5,1),
(6,5,0),
(7,6,1),
(1,6,0),
(2,7,1),
(3,7,0),
(4,8,1),
(2,8,0),
(2,9,1),
(5,9,0),
(6,10,1),
(2,10,0),
(2,11,1),
(7,11,0),
(3,12,1),
(4,12,0),
(5,13,1),
(3,13,0),
(3,14,1),
(6,14,0),
(7,15,1),
(3,15,0),
(4,16,1),
(5,16,0),
(6,17,1),
(4,17,0),
(4,18,1),
(7,18,0),
(5,19,1),
(6,19,0),
(7,20,1),
(5,20,0),
(6,21,1),
(7,21,0);

