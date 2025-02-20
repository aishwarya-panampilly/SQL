-- Section A
-- Problem 1

-- run this sql script on terminal using the commands
-- 1) Start mysql server on terminal: mysql -u username -p
-- 2) Enter password
-- 3) mysql> source \(path_to_file)\filename.sql; 
--	Instead of (path_to_file) give the full path to where the sql file is stored

-- creating a database for the assignment
create database jbl;
use jbl;

-- creating first table
create table Scores (
	Team varchar(30) not null ,
	Opponent varchar(30) not null,
	RunsFor int,
	RunsAgainst int
);

-- inserting values into the table
insert into Scores values 
	('Dragons','Tigers',5,3),
	('Carp','Swallows',4,6),
	('Bay Stars','Giants',2,1),
	('Marines','Hawks',5,3),
	('Ham Fighters','Buffaloes',1,6),
	('Lions','Golden Eagles',8,12),
	('Tigers','Dragons',3,5),
	('Swallows','Carp',6,4),
	('Giants','Bay Stars',1,2),
	('Hawks','Marines',3,5),
	('Buffaloes','Ham Fighters',6,1),
	('Golden Eagles','Lions',12,8);
	
-- showing how the table looks now
select * from Scores;

-- executing the required query
select Team 
from Scores
where RunsFor > RunsAgainst and RunsFor <= RunsAgainst + 2;


	


	
	
