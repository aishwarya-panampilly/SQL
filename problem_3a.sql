-- Section A
-- Problem 3

-- run this sql script on terminal using the commands
-- 1) Start mysql server on terminal: mysql -u username -p
-- 2) Enter password
-- 3) mysql> source \(path_to_file)\filename.sql; 
--	Instead of (path_to_file) give the full path to where the sql file is stored

-- use the same database as problem 1
use jbl;

-- using the same table as problem 2 
-- executing the query
select Team, min(Opponent), max(Runs)
from Scores
group by Team;
