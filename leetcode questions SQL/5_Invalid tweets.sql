SHOW DATABASES;
USE leetcode;

CREATE TABLE Tweets(
tweet_id INT PRIMARY KEY,
content VARCHAR(255)
);

INSERT INTO Tweets VALUES
(1,'Vote for Biden'),
(2,'Let us make America great again!');

SELECT*FROM Tweets;
SELECT tweet_id FROM Tweets WHERE length(content) >15;


