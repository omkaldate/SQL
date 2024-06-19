show databases;
use leetcode;

create table Employee1(
employee_id int primary key,
name varchar(10),
experience_years int
);
insert into Employee1 values
(1,'khaled',3),
(2,'ali',2),
(3,'john',1),
(4,'doe',2);
select * from Employee1;



create table Project(
project_id int,
employee_id int,
primary key(project_id, employee_id),
foreign key(employee_id) references Employee1(employee_id)
);
insert into Project values
(1,1),
(1,2),
(1,3),
(2,1),
(2,4);
select*from Project;
drop table Project;


 select p.project_id , round(avg(e.experience_years),2) as average_years
 from Project as p inner join Employee1 as e 
 on p.employee_id = e.employee_id
 group by p.project_id ;






