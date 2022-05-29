--Task1
CREATE DATABASE company
USE company
CREATE TABLE employees(Id int, Name nvarchar, SurName nvarchar, Position nvarchar, Salary int)
INSERT INTO employees VALUES(1,'Elnur','Ehmedov','CEO',3500)
INSERT INTO employees VALUES(2,'Elnur','Ehmedov','Vise-Ceo',2000)
INSERT INTO employees VALUES(3,'Elnur','Ehmedov','Manager',1500)
INSERT INTO employees VALUES(4,'Elnur','Ehmedov','Worker',1000)
Select MIN(Salary) From employees --min maas
SELECT MAX(Salary) FROM employees --max maas
SELECT AVG(Salary) FROM employees -- orta maas
SELECT * FROM employees WHERE Salary > (SELECT AVG(Salary) FROM employees) -- ortalama maasdan yuxari olanlar