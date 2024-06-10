SHOW DATABASES;
USE ORG;
SHOW TABLES;

CREATE TABLE customer(
id INT PRIMARY KEY,
c_name VARCHAR(255),
gender CHAR(1),
city VARCHAR(255),
pincode INT
-- CONSTRAINT CHECK (pincode >1000)
);
INSERT INTO customer VALUES 
(1,'OM','M','SAWARGAON',413624),
(2,'NAVNATH','M','SAWARGAON',413624),
(3,'TANVI','F','SOLAPUR',311003),
(5,'xxx','x','lundon',00000),
(9,'yyy','y','japan',1111),
(4,'don','M','farm',4133424);
DROP TABLE customer;
SELECT* FROM customer;



CREATE TABLE order_details(
order_id INT PRIMARY KEY,
delivery_date DATE,
cust_id INT
-- FOREIGN KEY(cust_id) REFERENCES customer(id)
);
INSERT INTO order_details VALUES
(100,'2024-01-01',1),
(101,'2024-01-02',1),
(50,'2010-12-12',10),
(51,'2010-12-12',11);
SELECT * FROM order_details; 
drop table order_details;


SELECT c.c_name,o.* FROM customer AS c INNER JOIN order_details AS o ON c.id = o.cust_id;   -- inner join
SELECT c.c_name,o.* FROM customer AS c INNER JOIN order_details AS o ON c.id = o.cust_id WHERE c.pincode = 423604 OR o.order_id = 100; -- inner join with condi
SELECT c.c_name,c.gender,o.order_id,o.delivery_date,o.cust_id FROM customer AS c LEFT JOIN order_details AS o ON c.id = o.cust_id; -- left join
SELECT c.c_name,c.gender,o.order_id,o.delivery_date,o.cust_id FROM customer AS c RIGHT JOIN order_details AS o ON c.id = o.cust_id; -- right join
SELECT c.c_name,c.gender,c1.city,c1.id FROM customer as c INNER JOIN customer AS c1 ON c.id = c1.id;  -- self join

SELECT c.*,o.*FROM customer AS c LEFT JOIN order_details AS o ON c.id = o.cust_id
UNION
SELECT c.*,o.* FROM customer AS c RIGHT JOIN order_details AS o ON c.id = o.cust_id;

SELECT customer.id , order_details.order_id FROM customer CROSS JOIN order_details;

select *FROM customer,order_details WHERE customer.id = order_details.cust_id;

 SELECT* FROM customer 
 UNION SELECT
 * FROM order_details;
 
SELECT customer.*,order_details.* FROM customer INNER JOIN order_details HAVING customer.id = order_details.cust_id; 




CREATE TABLE dept1(
empid INT  PRIMARY KEY,
name VARCHAR(255),
role VARCHAR(255)
);

INSERT INTO dept1 VALUES
(1,'A','ENGINEER'),
(2,'B','SALESMAN'),
(3,'C','MANAGER'),
(4,'D','SALESMAN'),
(5,'E','ENGINEER');

CREATE TABLE dept2(
empid INT  PRIMARY KEY,
name VARCHAR(255),
role VARCHAR(255)
);

INSERT INTO dept2 VALUES
(3,'C','MANAGER'),
(6,'F','MARKETING'),
(7,'G','SALSEMAN');

SELECT* FROM dept1;
SELECT* FROM dept2;

-- Q1
SELECT * FROM dept1
UNION
SELECT * FROM dept2;   

-- Q2
SELECT * FROM dept1 WHERE role = 'SALESMAN'
UNION
SELECT * FROM dept2 WHERE role = 'SALESMAN';

-- Q3
SELECT dept1.*,dept2.* FROM dept1 INNER JOIN dept2  USING(empid);

-- Q4
SELECT dept1.*FROM dept1 LEFT JOIN dept2 USING (empid) WHERE dept2.empid IS NULL;
SELECT dept1.*FROM dept1 LEFT JOIN dept2 USING (empid) WHERE dept2.empid IS NOT NULL;