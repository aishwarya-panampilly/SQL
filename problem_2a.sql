-- Section A
-- Problem 2

-- run this sql script on terminal using the commands
-- 1) Start mysql server on terminal: mysql -u username -p
-- 2) Enter password
-- 3) mysql> source \(path_to_file)\filename.sql; 
--	Instead of (path_to_file) give the full path to where the sql file is stored

-- use the same database as problem 1
use jbl;

-- drop the original score table for the new score table
drop table Scores;

-- now creating new score table
create table Scores (
	Team varchar(30) not null,
	Day varchar(20) not null,
	Opponent varchar(30),
	Runs int
);

-- inserting values into the table
insert into Scores values
	('Dragons','Sunday','Swallows',4),
	('Tigers','Sunday','Bay Stars',9),
	('Carp','Sunday',NULL,NULL),
	('Swallows','Sunday','Dragons',7),
	('Bay Stars','Sunday','Tigers',2),
	('Giants','Sunday',NULL,NULL),
	('Dragons','Monday','Carp',NULL),
	('Tigers','Monday',NULL,NULL),
	('Carp','Monday','Dragons',NULL),
	('Swallows','Monday','Giants',0),
	('Bay Stars','Monday',NULL,NULL),
	('Giants','Monday','Swallows',5);
	
-- display entire table
select * from Scores;

-- executing the query
select Team,Day
from Scores
where Opponent is NULL or not (Runs >= 0);

	
