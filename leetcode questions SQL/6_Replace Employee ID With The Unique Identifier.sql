SHOW DATABASES;
USE leetcode;

CREATE TABLE Employees(
id INT PRIMARY KEY,
name VARCHAR(255)
);
INSERT INTO Employees VALUES
(1, 'Alice'),
(7, 'Bob'),
(11, 'Meir'),
(90, 'Winsto'),
(3 , 'Jonathan');

SELECT * FROM Employees;


create table EmployeeUNI(
id INT,
unique_id INT,
PRIMARY KEY(id,unique_id)
);
INSERT INTO EmployeeUNI VALUES
(3,1),
(11,2),
(90,3);

SELECT *FROM EmployeeUNI;

SELECT t2.unique_id , t1.name FROM Employees AS t1 LEFT JOIN EmployeeUNI AS t2 USING(id) ORDER BY t2.unique_id;


