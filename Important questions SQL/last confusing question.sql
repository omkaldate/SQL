show databases;
use impq;

CREATE TABLE pairs(
A INT,
B INT
);

INSERT INTO pairs values
 (1,2),
 (2,4),
 (2,1),
 (3,2),
 (4,2),
 (5,6),
 (6,5),
 (7,8);
 
 SELECT * FROM pairs;
 drop table pairs;

 -- remove reversed pairs  (joins)
 SELECT lt.* from pairs AS lt LEFT JOIN pairs AS rt ON lt.A = rt.B AND lt.B = rt.A WHERE rt.A IS NULL  OR lt.A < rt.A;
 
 -- print only that pairs which are not repeated
 SELECT lt.* from pairs AS lt LEFT JOIN pairs AS rt ON lt.A = rt.B AND lt.B = rt.A WHERE rt.A IS NULL AND rt.B IS NULL ;
 
 -- remoce reversed pairs  (corellated subquery)
 SELECT * FROM pairs AS p1 WHERE NOT EXISTS( 
 SELECT * FROM pairs AS p2 WHERE p1.B = p2.A AND p1.A = p2.B AND p1.A > p2.A);
 
 