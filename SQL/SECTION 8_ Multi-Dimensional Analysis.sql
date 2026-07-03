WITH ProductSales AS (
    SELECT
        t.Country,
        p.ProductName,
        SUM(f.OrderQuantity) AS TotalQuantity
    FROM factsales f
    JOIN dimproduct p
        ON f.ProductKey = p.ProductKey
    JOIN dimterritory t
        ON f.SalesTerritoryKey = t.SalesTerritoryKey
    GROUP BY
      t.Country,
        p.ProductName
),

RankedProducts AS (
    SELECT *,
           RANK() OVER (
               PARTITION BY Country
               ORDER BY TotalQuantity DESC
           ) AS rnk
    FROM ProductSales
)

SELECT
    Country,
    ProductName,
    TotalQuantity
FROM RankedProducts

WITH CategorySales AS (
    SELECT 
        d.Year,
        pc.CategoryName,
        SUM(f.OrderQuantity) AS TotalSales,
        RANK() OVER(
            PARTITION BY d.Year
            ORDER BY SUM(f.OrderQuantity) DESC
        ) AS rnk
    FROM FactSales f
    JOIN DimDate d
        ON f.DateKey = d.DateKey
    JOIN DimProduct p
        ON f.ProductKey = p.ProductKey
    JOIN DimProductSubcategory ps
        ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
    JOIN DimProductCategory pc
      ON ps.ProductCategoryKey = pc.ProductCategoryKey
    GROUP BY d.Year, pc.CategoryName
)

SELECT Year,
       CategoryName,
       TotalSales
FROM CategorySales
WHERE rnk = 1;
WHERE rnk = 1
ORDER BY Country;

SELECT
    t.Country,
    f.CustomerKey,
    SUM(f.OrderQuantity) AS TotalSales
FROM FactSales f
JOIN DimTerritory t
    ON f.SalesTerritoryKey = t.SalesTerritoryKey
GROUP BY
    t.Country,
    f.CustomerKey
ORDER BY
    t.Country,
    TotalSales DESC;

SELECT
    p.ProductName,
    p.ProductKey,
    SUM(f.OrderQuantity) AS TotalSales
FROM FactSales f
JOIN DimProduct p
    ON f.ProductKey = p.ProductKey
GROUP BY
    p.ProductKey,
    p.ProductName
ORDER BY TotalSales DESC
LIMIT 1;

SELECT
    d.Year,
    d.Month,
    SUM(f.OrderQuantity) AS MonthlySales
FROM FactSales f
JOIN DimDate d
    ON f.DateKey = d.DateKey
WHERE f.ProductKey = 477
 GROUP BY
    d.Year,
    d.Month
ORDER BY
    d.Year,
    d.Month;
 
 SELECT
    c.AnnualIncome,
    pc.CategoryName,
    SUM(f.OrderQuantity) AS TotalSales
FROM FactSales f
JOIN DimCustomer c
    ON f.CustomerKey = c.CustomerKey
JOIN DimProduct p
    ON f.ProductKey = p.ProductKey
JOIN DimProductSubcategory ps
    ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
JOIN DimProductCategory pc
    ON ps.ProductCategoryKey = pc.ProductCategoryKey
GROUP BY
    c.AnnualIncome,
    pc.CategoryName
ORDER BY
    c.AnnualIncome,
    TotalSales DESC;
