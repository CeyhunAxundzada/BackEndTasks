CREATE DATABASE market
USE market
CREATE TABLE products(Id int, Name nvarchar, Price int)
INSERT INTO products VALUES(1,'bread',13)
INSERT INTO products VALUES(2,'cola',14)
INSERT INTO products VALUES(3,'fruits',25)
INSERT INTO products VALUES(4,'Conditioner',37)
INSERT INTO products VALUES(5,'shampoo',1)
INSERT INTO products VALUES(6,'toothpaste',21)
INSERT INTO products VALUES(7,'butter',13)
INSERT INTO products VALUES(8,'fish',76)
INSERT INTO products VALUES(9,'drinks',17)
INSERT INTO products VALUES(10,'etherium',3500)
ALTER TABLE products
ADD Brand NVARCHAR
SELECT * FROM products WHERE Price < (SELECT AVG(Price) FROM products)
SELECT * FROM products WHERE Price > 10