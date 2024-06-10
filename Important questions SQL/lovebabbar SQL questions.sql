SHOW DATABASES;
USE impq;
SHOW TABLES;

-- Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.
SELECT FIRST_NAME AS WORKER_NAME FROM worker;

-- Q-2. Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case.
SELECT ucase(FIRST_NAME) FROM worker;
  
-- Q-3. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
SELECT DISTINCT DEPARTMENT FROM worker;
  
-- Q-4. Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.
SELECT substring(FIRST_NAME ,1,3) FROM worker;

-- Q-5. Write an SQL query to find the position of the alphabet (‘b’) in the first name column ‘Amitabh’ from Worker table.
SELECT instr(FIRST_NAME,'B')  FROM worker WHERE FIRST_NAME = 'Amitabh';

-- Q-6. Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.
SELECT rtrim(FIRST_NAME) FROM worker;

-- Q-7. Write an SQL query to print the DEPARTMENT from Worker table after removing white spaces from the left side.
SELECT ltrim(FIRST_NAME) FROM worker;

-- Q-8. Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.
SELECT DISTINCT DEPARTMENT,length(DEPARTMENT) FROM worker;

-- Q-9. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.
SELECT replace(FIRST_NAME,'a','A') FROM worker;

-- Q-10. Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME.
SELECT concat(FIRST_NAME,' ',LAST_NAME) AS COMPLETE_NAME FROM worker;

-- Q-11. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
SELECT * FROM worker ORDER BY FIRST_NAME;

-- Q-12. Write an SQL query to print all Worker details from the Worker table order by 
-- FIRST_NAME Ascending and DEPARTMENT Descending.
SELECT * FROM worker ORDER BY FIRST_NAME, DEPARTMENT DESC;

-- Q-13. Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table.
SELECT * FROM worker WHERE FIRST_NAME IN('Vipul' , 'Satish');

-- Q-14. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.
SELECT * FROM worker WHERE FIRST_NAME <> 'Vipul' AND FIRST_NAME <>'Satish';
SELECT * FROM worker WHERE FIRST_NAME NOT IN('Vipul' , 'Satish');

-- Q-15. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin*”.
SELECT * FROM worker WHERE DEPARTMENT LIKE 'Admin%';

-- Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.
SELECT * FROM worker WHERE FIRST_NAME LIKE '%a%' ;

-- Q-17. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.
SELECT * FROM worker WHERE FIRST_NAME LIKE '%a' ;

-- Q-18. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
SELECT * FROM worker WHERE FIRST_NAME LIKE '_____h' ;

-- Q-19. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.
SELECT * FROM worker WHERE SALARY BETWEEN 100000 AND 500000;

-- Q-20. Write an SQL query to print details of the Workers who have joined in Feb’2014.
 SELECT * FROM worker WHERE YEAR(joining_date) = 2014 AND MONTH(joining_date) = 02;

-- Q-21. Write an SQL query to fetch the count of employees working in the department ‘Admin’.
SELECT DEPARTMENT, count(DEPARTMENT) FROM worker WHERE DEPARTMENT = 'Admin';

-- Q-22. Write an SQL query to fetch worker full names with salaries >= 50000 and <= 100000.
SELECT concat(FIRST_NAME,' ',LAST_NAME) FROM worker WHERE SALARY BETWEEN 50000 AND 100000;

-- Q-23. Write an SQL query to fetch the no. of workers for each department in the descending order.
SELECT DEPARTMENT ,count(WORKER_ID) FROM worker GROUP BY DEPARTMENT ORDER BY count(WORKER_ID) DESC;

-- Q-24. Write an SQL query to print details of the Workers who are also Managers.
 select w.* from worker as w inner join title as t on w.worker_id = t.worker_ref_id where t.worker_title = 'Manager';

-- Q-25. Write an SQL query to fetch number (more than 1) of same titles in the ORG of different types.
SELECT WORKER_TITLE,count(WORKER_TITLE) FROM title GROUP BY WORKER_TITLE HAVING count(WORKER_TITLE)>1;

-- Q-26. Write an SQL query to show only odd rows from a table.
 select * from worker where MOD (WORKER_ID, 2) != 0; 
select * from worker where MOD (WORKER_ID, 2) <> 0;

-- Q-27. Write an SQL query to show only even rows from a table.
















