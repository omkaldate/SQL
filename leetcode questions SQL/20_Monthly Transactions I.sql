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
 (121,'us','approved',1000,'2018-12-18'),
 (122,'us','declined',2000,'2018-12-19'),
 (123,'us','approved',2000,'2019-01-01'),
 (124,'de','approved',2000,'2019-01-07');
    
    select * from Transactions;
    drop table Transactions;
    
    
select date_format(trans_date, '%Y-%m') as month,
country,
count(id) as trans_count, 
sum(if(state='approved',1,0)) as approved_count, 
sum(amount) as trans_total_amount,
sum(if(state='approved',amount,0)) as approved_total_amount
from Transactions 
group by country,month;