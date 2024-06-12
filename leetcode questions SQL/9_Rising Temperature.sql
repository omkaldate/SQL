SHOW DATABASES;
USE leetcode;

CREATE TABLE Weather(
id INT PRIMARY KEY,
recordDate DATE,
temperature int
);
INSERT INTO Weather VALUES
(1,'2015-01-01',10),
(2,'2015-01-02',25),
(3,'2015-01-03',20),
(4,'2015-01-04',30);
SELECT * FROM Weather;


select w1.id from Weather AS w1, Weather AS w2 where datediff(w1.recordDate,w2.recordDate) = 1 and w1.temperature > w2.temperature;
