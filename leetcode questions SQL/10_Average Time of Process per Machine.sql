SHOW DATABASES;
USE leetcode;

CREATE TABLE Activity(
machine_id INT,
process_id INT,
activity_type ENUM('start','end'),
timestamp float,
PRIMARY KEY(machine_id, process_id, activity_type)
);
INSERT INTO Activity VALUES
(0,0,'start',0.712),
(0,0,'end',1.520),
(0,1,'start',3.140),
(0,1,'end',4.120),
(1,0,'start',0.550),
(1,0,'end',1.550),
(1,1,'start',0.430),
(1,1,'end',1.420),
(2,0,'start',4.100),
(2,0,'end',4.512),
(2,1,'start',2.500),
(2,1,'end',5.000);
SELECT * FROM Activity ;

# Write your MySQL query statement below
select a.machine_id, ROUND(AVG(b.timestamp - a.timestamp),3) as processing_time 
from Activity a, Activity b where a.activity_type='start' and b.activity_type='end' and a.process_id=b.process_id
and a.machine_id=b.machine_id GROUP by a.machine_id;