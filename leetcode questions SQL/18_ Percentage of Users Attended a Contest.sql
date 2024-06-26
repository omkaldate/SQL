show databases;
use leetcode;

create table Users(
user_id int primary key,
user_name varchar(255)
);
insert into Users values
(6,'alice'),
(2,'bob'),
(7,'alex');
select* from users;


create table Register(
contest_id int,
user_id int
);
insert into Register values
(215,6),
(209,2),
(208,2),
(210,6),
(208,6),
(209,7),
(209,6),
(215,7),
(210,2),
(207,2),
(210,7);
select* from Register;

alter table register change column contesr_id contest_id int;

select contest_id, round(count(distinct user_id)*100/(select count(user_id)from users),2) as percentage from register 
group by contest_id
order by percentage desc, contest_id;