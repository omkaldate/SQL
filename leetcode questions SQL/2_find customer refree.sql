SHOW DATABASES;
USE leetcode;

CREATE TABLE Customer(
id INT PRIMARY KEY,
name  VARCHAR(255),
referee_id INT
);

INSERT INTO Customer VALUES
(1,'WILL',NULL),
(2,'JEN',NULL),
(3,'ALEX',2),
(4,'BILL',NULL),
(5,'ZAK',1),
(6,'MARK',2);
SELECT* FROM Customer;

SELECT name FROM Customer WHERE referee_id != 2 OR referee_id IS NULL;