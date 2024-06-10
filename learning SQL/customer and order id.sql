-- SHOW DATABASES;
-- USE ORG;
-- SHOW TABLES;

-- CREATE TABLE customer(
-- id INT PRIMARY KEY,
-- c_name VARCHAR(255),
-- gender CHAR(1),
-- city VARCHAR(255),
-- pincode INT
-- CONSTRAINT CHECK (pincode >1000)
-- );
-- INSERT INTO customer VALUES 
-- (1,'OM','M','SAWARGAON',413624),
-- (2,'NAVNATH','M','SAWARGAON',413624),
-- (3,'TANVI','F','SOLAPUR',311003);
-- DROP TABLE customer;
-- SELECT* FROM customer;



-- CREATE TABLE order_details(
-- order_id INT PRIMARY KEY,
-- delivery_date DATE,
-- cust_id INT,
-- FOREIGN KEY(cust_id) REFERENCES customer(id)
-- );
-- INSERT INTO order_details VALUES
-- (100,'2024-01-01',1),
-- (101,'2024-01-02',1);
-- INSERT INTO order_details VALUES (102,'2024-01-02',2);
-- SELECT * FROM order_details; 
-- drop table order_details;

--  DELETE FROM customer WHERE id = 1;			      -- not working
-- INSERT	INTO order_details (order_id , cust_id) VALUES(90,2);
--  ALTER TABLE order_details ADD interest FLOAT NOT NULL DEFAULT 0;
--  ALTER TABLE order_details MODIFY order_id DOUBLE NOT NULL DEFAULT 0;   -- not working
--  DESC order_details;    -- NOT WORKING
--  ALTER TABLE order_details CHANGE COLUMN delivery_date kadhe_pahej VARCHAR(255) NOT NULL DEFAULT 'UDYS';
--  ALTER TABLE order_details DROP COLUMN interest;
-- ALTER TABLE order_details RENAME TO account_details;  
--  ALTER TABLE account_details RENAME TO order_details;  
--  
--  SET SQL_SAFE_UPDATES =0;
--  update order_details SET delivery_date = 2024-99-99 , order_id = 100;
-- UPDATE customer SET pincode = 10000;
-- UPDATE customer SET pincode = pincode + 1;
--  DELETE FROM order_details WHERE order_id =100;    -- not working
--  DELETE FROM order_details;
 
 
 
 
 
 
 
 
 
 
 
 -- referential constriants
 CREATE TABLE cust(
id INT PRIMARY KEY,
c_name VARCHAR(255),
gender CHAR(1),
city VARCHAR(255),
pincode INT
CONSTRAINT CHECK (pincode >1000)
);
INSERT INTO cust VALUES 
(1,'OM','M','SAWARGAON',413624),
(2,'NAVNATH','M','SAWARGAON',413624),
(3,'TANVI','F','SOLAPUR',311003);
DROP TABLE cust;

  

CREATE TABLE o_details(
order_id INT PRIMARY KEY,
delivery_date DATE,
cust_id INT,
-- FOREIGN KEY(cust_id) REFERENCES cust(id) ON DELETE CASCADE
FOREIGN KEY(cust_id) REFERENCES cust(id) ON DELETE SET NULL
);
INSERT INTO o_details VALUES(100,'2024-01-01',1);
SELECT * FROM o_details;
DROP TABLE o_details;

DELETE FROM cust WHERE id = 1;


-- Replace

SHOW DATABASES;
USe org;
SHOW TABLES;
-- USE THE CUST TABLE FOR REPLACE OPERATIONS

 CREATE TABLE cust(
id INT PRIMARY KEY,
c_name VARCHAR(255),
gender CHAR(1),
city VARCHAR(255),
pincode INT
CONSTRAINT CHECK (pincode >1000)
);
REPLACE INTO cust values(5,'ram','m','sawargaon',42858);
INSERT INTO cust VALUES 
(2,'NAVNATH','M','SAWARGAON',413624),
(3,'TANVI','F','SOLAPUR',311003);
REPLACE INTO cust values(5,'samina','f','neptune',4299858);
REPLACE INTO cust (id,c_name)values(5,'samina');
REPLACE INTO cust SET id =5 , c_name  ='ramakant';
REPLACE INTO cust (id,c_name,gender) SELECT id ,c_name,gender FROM cust WHERE id = 2;

DROP TABLE cust;
SELECT * FROM cust;

