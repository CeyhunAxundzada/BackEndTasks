--Task 1
--Database Yaradin Adi Ne Olursa Olsun

--Brands Adinda Table Yaradin 2 dene colum Id ve Name

--Notebooks Adinda Table Yaradin Id,Name, Price Columlari Olsun.

--Phones Adinda Table Yaradin Id, Name, Price Columlari Olsun.

--1) Notebook ve Brand Arasinda Mentiqe Uygun Relation Qurun.

--2) Phones ve Brand Arasinda Mentiqe Uygun Relation Qurun.

--3) Notebooks Adini, Brandin Adini BrandName kimi ve Qiymetini Cixardan Query.

--4) Phones Adini, Brandin Adini BrandName kimi ve Qiymetini Cixardan Query.

--5) Brand Adinin Terkibinde s Olan Butun Notebooklari Cixardan Query.

--6) Qiymeti 2000 ve 5000 arasi ve ya 5000 den yuksek Notebooklari Cixardan Query.

--7) Qiymeti 1000 ve 1500 arasi ve ya 1500 den yuksek Phonelari Cixardan Query.

--8) Her Branda Aid Nece dene Notebook Varsa Brandin Adini Ve Yaninda Sayini Cixardan Query.

--9) Her Branda Aid Nece dene Phone Varsa Brandin Adini Ve Yaninda Sayini Cixardan Query.

--10) Hem Phone Hem de Notebookda Ortaq Olan Name ve BrandId Datalarni Bir Cedvelde Cixardan Query.

--11) Phone ve Notebook da Id, Name, Price, ve BrandId Olan Butun Datalari Cixardan Query.

--12) Phone ve Notebook da Id, Name, Price, ve Brandin Adini BrandName kimi Olan Butun Datalari Cixardan Query.

--13) Phone ve Notebook da Id, Name, Price, ve Brandin Adini BrandName kimi Olan Butun Datalarin Icinden Price 1000-den Boyuk Olan Datalari Cixardan Query.

--14) Phones Tabelenden Data Cixardacaqsiniz Amma Nece Olacaq Brandin Adi (BrandName kimi), Hemin Brandda Olan Telefonlarin Pricenin Cemi (TotalPrice Kimi) ve Hemin Branda Nece dene Telefon Varsa Sayini (ProductCount Kimi) Olan Datalari Cixardan Query.Misal
--BrandName:        TotalPrice:        ProductCount:
--Apple                   6750                3
--Samsung            3500                4
--Redmi                 800                1

--15) Notebooks Tabelenden Data Cixardacaqsiniz Amma Nece Olacaq Brandin Adi (BrandName kimi), Hemin Brandda Olan Telefonlarin Pricenin Cemi (TotalPrice Kimi) , Hemin Branda Nece dene Telefon Varsa Sayini (ProductCount Kimi) Olacaq ve Sayi 3-ve 3-den Cox Olan Datalari Cixardan Query.Misal
--BrandName:        TotalPrice:        ProductCount:
--Apple                    6750                3
--Samsung              3500                4



-- Valuelar insert elemedim taskda yazilmamisdi deye

create database sqlTask3
use sqlTask3
create table Brands(
Id int constraint pk_brands_Id primary key Identity,
Name nvarchar(30)
)
create table Notebooks(
Id int constraint pk_notebooks_Id primary key Identity,
Name nvarchar(30),
Prices int,
BrandId Int Constraint fk_Notebooks_BrandId foreign key references Brands(Id)--1 relation qurmaq
)
create table Phones(
Id int constraint pk_phones_Id primary key Identity,
Name nvarchar(30),
Prices int,
BrandId Int Constraint fk_Phones_BrandId foreign key references Brands(Id)--2 relation qurmaq
)

SELECT Notebooks.Name,
Brands.Name as [Brand's Name] FROM Notebooks Join Brands on Notebooks.BrandId = Brands.Id --3

SELECT Phones.Name, 
Brands.Name as [Brand's Name] FROM Phones Join Brands on Phones.BrandId = Brands.Id --4

Select Brands.Name, 
Notebooks.Name FROM Brands Join Notebooks On Brands.Id = Notebooks.BrandId --5

Select (Name + ', Price: ' + CONVERT(nvarchar(20), Prices)) FROM Notebooks WHERE Prices between 2000 and 5000 --6


Select (Name + ', Price: ' + CONVERT(nvarchar(20), Prices)) FROM Phones WHERE (( Prices between 1000 and 1500) or Prices > 1500 )--7

Select Brands.Name,
Count(Brands.Id) From Notebooks Join Brands On Notebooks.BrandId = Brands.Id Group By Brands.Name --8

Select Brands.Name,
Count(Brands.Id) From Phones Join Brands On Phones.BrandId = Brands.Id Group By Brands.Name --9

SELECT * FROM Phones Union All SELECT * FROM Notebooks --11



