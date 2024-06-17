show databases;
use leetcode;

create table Cinema(
id int primary key,
movie varchar(255),
description varchar(255),
rating float
);
insert into Cinema values
(1,'war','great 3d',8.9),
(2,'science','fiction',8.5),
(3,'irish','boring',6.2),
(4,'ice song','fantacy',8.6),
(5,'house card','interesting',9.1);

select id,movie,description,rating from Cinema where id%2 =1 and description <>'boring' order by rating desc;