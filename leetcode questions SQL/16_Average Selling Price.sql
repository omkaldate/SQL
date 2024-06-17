show databases;
use leetcode;

create table Price(
product_id int, 
start_date date,
end_date date,
price int,
primary key(product_id,start_date,end_date)
);
insert into Price values
(1,'2019-02-17','2019-02-28',5),
(1,'2019-03-01','2019-03-22',20),
(2,'2019-02-01','2019-02-20',15),
(2,'2019-02-21','2019-03-31',30);
select * from Price;
drop table Price;

create table UnitSold(
product_id int,
purchase_date date,
units int
);
insert into UnitSold values
(1,'2019-02-25',100),
(1,'2019-03-01',15),
(2,'2019-02-10',200),
(2,'2019-03-22',30);
select *from UnitSold;
drop table UnitSold;


SELECT p.product_id, IFNULL(ROUND(SUM(p.price * u.units)/SUM(u.units),2),0)as average_price FROM Price p
LEFT JOIN UnitSold u 
ON  p.product_id = u.product_id
AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id












