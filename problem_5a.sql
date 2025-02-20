-- Section A
-- Problem 5

-- run this sql script on terminal using the commands
-- 1) Start mysql server on terminal: mysql -u username -p
-- 2) Enter password
-- 3) mysql> source \(path_to_file)\filename.sql; 
--	Instead of (path_to_file) give the full path to where the sql file is stored

-- use the same database as problem 1
use jbl;

-- using the same table with a few updates
update Scores 
set Opponent = 'Giants',Runs = 2
where Team = 'Carp' and Day = 'Sunday';

update Scores
set Opponent = 'Carp',Runs = 4
where Team = 'Giants' and Day = 'Sunday';

update Scores
set Opponent = 'Bay Stars'
where Team = 'Tigers' and Day = 'Monday' and Runs = 5;

update Scores 
set Runs = 3
where Team = 'Carp' and Day = 'Monday' and Opponent = 'Dragons';

update Scores 
set Opponent = 'Tigers'
where Team = 'Bay Stars' and Day = 'Monday' and Runs = 7;

-- displaying the new table
select * from Scores;

-- executing the query
select S1.Team, S2.Team
from Scores S1, Scores S2
where S1.Opponent = S2.Opponent
and S1.Team <> S2.Team;

