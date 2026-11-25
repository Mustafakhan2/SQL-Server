--SELECT 
--	c.first_name, 
--	o.order_id, 
--	o.sales
--FROM customers c
--INNER JOIN orders o
--ON c.id = o.customer_id

--SELECT 
--	c.id,
--	c.first_name, 
--	o.order_id, 
--	o.sales
--FROM customers c
--LEFT JOIN orders o
--ON c.id = o.customer_id

--SELECT 
--	c.id,
--	c.first_name, 
--	o.order_id, 
--	o.sales
--FROM customers c
--LEFT JOIN orders o
--ON c.id = o.customer_id
--WHERE o.customer_id is NULL

--SELECT 
--	o.order_id, 
--	o.sales,
--	c.id,
--	c.first_name
--FROM orders o
--LEFT JOIN customers c
--ON c.id = o.customer_id
--WHERE c.id is NULL

--SELECT * 
--FROM customers c
--CROSS JOIN orders o

SELECT 
	o.OrderID, 
	concat(c.FirstName, ' ', c.LastName) AS "Customer's Name", 
	o.Sales, 
	p.Product ProductName, 
	p.Price, 
	CONCAT(e.FirstName, ' ', e.LastName) "Employee's Name"
FROM Sales.Orders o
LEFT JOIN Sales.Customers c ON o.CustomerID = c.CustomerID
LEFT JOIN Sales.Products p ON o.ProductID = p.ProductID
LEFT JOIN Sales.Employees e ON o.SalesPersonID = e.EmployeeID