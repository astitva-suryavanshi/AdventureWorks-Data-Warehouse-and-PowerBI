SELECT COUNT(*) FROM DimDate;
SELECT COUNT(*) FROM DimCustomer;
SELECT COUNT(*) FROM DimProductCategory;
SELECT COUNT(*) FROM DimProductSubcategory;
SELECT COUNT(*) FROM DimProduct;
SELECT COUNT(*) FROM DimTerritory;
SELECT COUNT(*) FROM FactSales;
SELECT count(*) FROM FactReturns;


#unique customers
SELECT COUNT(DISTINCT CustomerKey) as UniqueCustomer
FROM factsales;

#unique product
SELECT COUNT(DISTINCT ProductKey) as UniqueProduct FROM factsales