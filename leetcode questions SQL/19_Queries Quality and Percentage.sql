show databases;
use leetcode;

create table Queries(
query_name varchar(255),
result varchar(255),
position int,
rating int);
insert into Queries values
('dog','golden retriver',1,5),
('dog','german sheferd',2,5),
('dog','mule',200,1),
('cat','sherazi',5,2),
('cat','siamens',3,3),
('cat','sphirs',4,7);

select * from Queries;
truncate Queries;

select query_name,
round(avg(rating/position),2) as quality , 
round((sum(rating < 3) / (COUNT(rating))*100) ,2)as poor_query_percentage 
from Queries 
where query_name is not null
group by query_name ;