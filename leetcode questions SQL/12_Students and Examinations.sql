show databases;
use leetcode;

create table students(
student_id int primary key,
student_name varchar(255)
);
insert into students values
(1,'alice'),
(2,'bob'),
(13,'john'),
(6,'alex');
select* from students;

create table subjects(
subject_name varchar(255) primary key
);
insert into subjects values ('math'),('physics'),('programming');
select * from subjects;

create table examinations(
student_id int,
subject_name varchar(255)
);
insert into examinations values
(1,'maths'),
(1,'physics'),
(1,'programming'),
(2,'programming'),
(1,'physics'),
(1,'maths'),
(13,'maths'),
(13,'programming'),
(13,'physics'),
(2,'maths'),
(1,'maths');
select * from examinations;
drop table examinations;


select * from students s JOIN subjects sb ;

SELECT s.student_id , s.student_name , sb.subject_name , count(e.subject_name)attended_exams
FROM students s JOIN subjects sb LEFT JOIN examinations e ON s.student_id = e.student_id and sb.subject_name = e.subject_name 
GROUP BY s.student_id, sb.subject_name
ORDER BY s.student_id, sb.subject_name