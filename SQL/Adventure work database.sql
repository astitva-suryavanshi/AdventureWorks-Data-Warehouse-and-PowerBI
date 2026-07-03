#CREATE DATABASE adventureworks;
#USE adventureworks;
#SELECT DATABASE
#CREATE TABLE DimDate(
#DateKey INT PRIMARY KEY ,
#Datevalue DATE,
#Year INT,
#Month INT,
#MonthName VARCHAR(20),
#Quarter INT,
#Weekday VARCHAR(20)
#);

#CREATE TABLE DimCustomer(
#CustomerKey INT PRIMARY KEY ,
#Prefix VARCHAR(10),
#FirstName VARCHAR(50),
#LastName VARCHAR(50),
#BirthDate DATE,
#MaritalStatus VARCHAR(5),
#Gender VARCHAR(5),
#EmailAddress VARCHAR(50),
#AnnualIncome INT,
#TotalChildren INT,
#EducationLevel VARCHAR(50),
#Occupation VARCHAR(50),
#HomeOwner VARCHAR(10)
#);

#CREATE TABLE DimProductCategory(
#ProductCategoryKey INT PRIMARY KEY ,
#CategoryName VARCHAR(50)
#);

#CREATE TABLE DimProductSubcategory(
#ProductSubcategoryKey INT PRIMARY KEY ,
#SubcategoryName VARCHAR(100),
#ProductCategoryKey INT,

#FOREIGN KEY (ProductCategoryKey)
#REFERENCES DimProductCategory(ProductCategoryKey)
#);
