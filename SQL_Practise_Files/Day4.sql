--Question 1.Revenue by category: join [Order Details], Products and Categories, and sort by revenue descending.
SELECT 
	c.CategoryName, 
	CAST(Sum(od.UnitPrice * od.Quantity * (1-od.Discount)) AS DECIMAL(18,2)) Revenue
FROM [Order Details] od
INNER JOIN Products p 
ON od.ProductID = p.ProductID
INNER JOIN Categories c 
ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName
ORDER BY Revenue DESC

--Question 2.Top 5 customers by total revenue, with their country.
SELECT TOP 5
	c.CompanyName, 
	c.Country, 
	cast(SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)) as DECIMAL(18,2)) AS Revenue
FROM Customers c
JOIN Orders o 
ON c.CustomerID = o.CustomerID
JOIN [Order Details] od 
ON o.OrderID = od.OrderID
GROUP BY c.CompanyName, c.Country
ORDER BY Revenue DESC
