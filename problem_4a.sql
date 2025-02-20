-- Section A
-- Problem 4

-- run this sql script on terminal using the commands
-- 1) Start mysql server on terminal: mysql -u username -p
-- 2) Enter password
-- 3) mysql> source \(path_to_file)\filename.sql; 
--	Instead of (path_to_file) give the full path to where the sql file is stored

-- use the same database as problem 1
use jbl;

-- using the same table as problem 2 but making some changes
update Scores
set Runs = 6
where Team = 'Dragons' and Day = 'Monday' and Opponent = 'Carp';

update Scores
set Runs = 5
where Team = 'Tigers' and Day = 'Monday' and Opponent is NULL;

update Scores
set Runs = 7
where Team = 'Bay Stars' and Day = 'Monday' and Opponent is NULL;

-- display the entire table
select * from Scores;

-- execute the query
select * 
from Scores
order by Runs desc, Team asc;
