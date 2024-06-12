SHOW DATABASES;
USE leetcode;

CREATE TABLE Visits(
visit_id INT PRIMARY KEY,
customer_id int
);
INSERT INTO Visits VALUES
(1,23),
(2,9),
(4,30),
(5,54),
(6,96),
(7,54),
(8,54);
SELECT * FROM Visits;

CREATE TABLE Transaction(
transaction_id  INT PRIMARY KEY,
visit_id INT,
amount INT,
FOREIGN KEY (visit_id) REFERENCES Visits(visit_id)
);
INSERT INTO Transaction VALUES
(2,5,310),
(3,5,300),
(9,5,200),
(12,1,910),
(13,2,970);
SELECT * FROM Transaction;

 SELECT v.customer_id , count(v.visit_id) AS count_no_trans FROM Visits AS v LEFT JOIN Transaction AS t USING(visit_id) WHERE t.visit_id IS NULL GROUP BY v.customer_id;


