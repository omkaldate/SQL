show databases;
use leetcode;

create table mployee(
id int primary key,
name varchar(255),
department varchar(1),
managerId int
);
insert into mployee values
(101,'john','A',null),
(102,'dan','A',101),
(103,'james','A',101),
(104,'amy','A',101),
(105,'anne','A',101),
(106,'ron','B',101);
select * from mployee;

select e.name from mployee as e
inner join mployee as f on f.managerId = e.id
group by e.id
having count(f.id) >= 5;