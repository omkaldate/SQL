show databases;
use leetcode;

create table Employee(
empId int primary key,
name varchar(255),
supervisor int,
salary int
);
insert into Employee values
(3,'brad',null,4000),
(1,'john',3,1000),
(2,'dan',3,2000),
(4,'thomas',3,4000);
select * from Employee;

create table Bonus(
empId int primary key,
bonus int,
foreign key(empId) references Employee(empId)
);
insert into Bonus values
(2,500),
(4,2000);
select * from Bonus;

SELECT e.name,b.bonus  FROM Employee AS e LEFT JOIN Bonus AS b using(empId) where b.bonus <1000 or b.empId is null ;

