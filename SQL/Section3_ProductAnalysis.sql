SELECT p.ProductName, SUM(f.OrderQuantity) as Best_selling_product
FROM dimproduct p 
JOIN factsales f 
ON p.ProductKey = f.ProductKey
GROUP BY p.ProductName 
ORDER BY Best_selling_product DESC
LIMIT 10;

SELECT p.ProductName, SUM(f.OrderQuantity) as UnderperformingProduct
FROM dimproduct p 
JOIN factsales f 
ON p.ProductKey = f.ProductKey
GROUP BY p.ProductName 
ORDER BY UnderperformingProduct
LIMIT 10