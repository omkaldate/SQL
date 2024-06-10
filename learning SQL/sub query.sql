SHOW DATABASES;
USE ORG;
SHOW TABLES;

CREATE TABLE customer(
id INT PRIMARY KEY,
c_name VARCHAR(255),
gender CHAR(1),
city VARCHAR(255),
pincode INT
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

SELECT * FROM customer WHERE id IN (SELECT id FROM customer WHERE c_name = 'TANVI');
SELECT * FROM customer WHERE c_name = 'TANVI'; 
SELECT max(id) FROM (SELECT * FROM customer WHERE c_name like '%A%') AS rami;

CREATE VIEW customer_view AS SELECT id,c_name,gender FROM customer;
SELECT * FROM customer_view;

ALTER VIEW customer_view AS SELECT c_name FROM customer;
DROP VIEW IF EXISTS customer_view;
