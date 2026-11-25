/*
Assignment 1: 1.	How many orders has each customer placed? Show the top 5 customers by order count, then the top 10 using ties properly (see what TOP ... WITH TIES does).

*/
SELECT TOP 5
    COUNT(o.OrderID) order_count
   ,o.CustomerID
FROM Orders o
GROUP BY o.CustomerID
ORDER BY order_count DESC

SELECT TOP 10 WITH TIES
    COUNT(o.OrderID) order_count
   ,o.CustomerID
FROM Orders o
GROUP BY o.CustomerID
ORDER BY order_count DESC

--Assignment 2.	Revenue of one order line is UnitPrice * Quantity * (1 - Discount) in [Order Details]. Compute total revenue per order and show the 10 largest orders, rounded to 2 decimals.
SELECT TOP 10
    *
   ,ROUND(UnitPrice * od.Quantity * (1 - od.Discount), 2) Total_Revenue
FROM [Order Details] od
ORDER BY Total_Revenue DESC

--Assignment 3.	For each CategoryID, show the number of products and the average UnitPrice, but only for categories with more than 10 products.
SELECT
    p.CategoryID
   ,COUNT(p.ProductID) Total_Products
   ,CASE
        WHEN COUNT(p.ProductID) > 10 THEN AVG(p.UnitPrice)
    END Avg_Price
FROM Products p
GROUP BY p.CategoryID

--Assignment 4.	For 1997 only, show the number of orders and total Freight per month, in calendar order
SELECT
    YEAR(o.OrderDate) years,
    count (o.OrderID) total_Orders, 
    sum (o.Freight) total_freight
FROM Orders o
WHERE YEAR(o.OrderDate) = 1997
GROUP BY YEAR(o.OrderDate)

--Assignment 5.	Classify products into price tiers with CASE: under 20 is Budget, 20 to 50 is Standard, above 50 is Premium. Count the products per tier.
SELECT 
    CASE 
    	WHEN p.UnitPrice <20 THEN 'Budget'
    	WHEN p.UnitPrice between 20 and 50 THEN 'Standard'
        WHEN p.UnitPrice > 50 THEN 'Premium'
    END Price_Tiers,
    COUNT(*)
from Products p
GROUP BY  CASE 
    	    WHEN p.UnitPrice <20 THEN 'Budget'
    	    WHEN p.UnitPrice between 20 and 50 THEN 'Standard'
            WHEN p.UnitPrice > 50 THEN 'Premium'
    END
   