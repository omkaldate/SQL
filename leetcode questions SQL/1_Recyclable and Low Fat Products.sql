SHOW DATABASES;
USE leetcode;

CREATE TABLE products(
product_id INT PRIMARY KEY,
low_fats CHAR(1),
recyclable CHAR(1)
);

INSERT INTO products VALUES
(0,'Y','N'),
(1,'Y','Y'),
(2,'N','N'),
(3,'Y','Y'),
(4,'N','N');

SELECT product_id FROM products  WHERE low_fats='y' AND recyclable ='y';