show databases;
use leetcode;

create table Transactions(
id int,
country varchar(255),
state varchar(255),
amount int,
trans_date date
);
 insert into Transactions values
 (121,'us','approved',1000,18-12-2018),
 (122,'us','declined',2000,19-12-2018),
 (123,'us','approved',2000,01-01-2019),
 (124,'de','approved',2000,07-01-2019);
    
    select * from Transactions;
    drop table Transactions;