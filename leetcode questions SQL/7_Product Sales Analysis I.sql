SHOW DATABASES;
USE leetcode;

CREATE TABLE Sales(
sale_id INT,
product_id INT,
year INT,
quantity INT,
price INT,
PRIMARY KEY(sale_id,year),
FOREIGN KEY(product_id) REFERENCES Product(product_id)
);
INSERT INTO Sales VALUES
(1,100,2008,10,5000),
(2,100,2009,12,5000),
(7,200,2011,15,9000);

DROP TABLE Sales;
SELECT * FROM Sales;



CREATE TABLE Product(
product_id INT PRIMARY KEY,
product_name VARCHAR(255)
);
INSERT INTO product VALUES
(100,'Nokia'),
(200,'Apple'),
(300,'Samsung');

DROP TABLE Product;
SELECT * FROM Product;

SELECT st.product_name,ft.year,ft.price FROM Sales As ft INNER JOIN Product AS st USING(Product_id) ORDER BY Product_id;