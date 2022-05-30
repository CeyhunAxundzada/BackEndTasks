--Employees (Id,FullName,Salary,DepartmentId, Email) ve Departments(Id, Name) table-lariniz olsun ve aralarinda one to many
--bir relation qurun. 

-- - Employee Salary- 0 -dan kicik ola bilmesiz
-- - Employee FullName - NULL OLA BILEZ ,  uzunlugu 3-den boyuk olmaldir
-- - Department Name - uzunlugu 2-den boyuk olamlidir, null ola bilmez
-- - Email Null Ola Bilmez Ve Tekrar Olunmasin 

--Task2
CREATE DATABASE Task2
USE Task2
CREATE TABLE Employees(
    Id INT,
    FullName NVARCHAR(20) Not Null,
    CHECK(Length(FullName)>3),
    Salary INT,
    CHECK(Salary>0),
    DepartmentId INT FOREIGN KEY References Departments(Id),
    Email NVARCHAR(30) Not Null UNIQUE,
)

CREATE TABLE Departments(
    Id INT Primary KEY,
    Name NVARCHAR(20) Not Null,
    CHECK(Length(Name)>2),
)
INSERT INTO Employees VALUES (1,'Employee1',1,'employee1@gmail.com')
INSERT INTO Employees VALUES (2,'Employee2',2,'employee2@gmail.com')
INSERT INTO Employees VALUES (3,'Employee3',3,'employee3@gmail.com')
INSERT INTO Departments Values(1, 'Department1')
INSERT INTO Departments Values(2, 'Department2')
INSERT INTO Departments Values(3, 'Department3')

