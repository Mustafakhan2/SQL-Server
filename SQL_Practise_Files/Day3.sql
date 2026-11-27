--Question 1.Return OrderID, OrderDate and the customer's CompanyName for every order placed in 1998.
SELECT 
	o.OrderID, 
	o.OrderDate, 
	c.CompanyName
FROM Orders o
INNER JOIN Customers c 
ON o.CustomerID = c.CustomerID
WHERE YEAR(o.OrderDate) = 1998

--Question 2.Which customers have never placed an order? Use a LEFT JOIN with an IS NULL filter.
SELECT 
	c.CustomerID, 
	c.CompanyName
from Customers c
LEFT JOIN Orders o 
	ON c.CustomerID = o.CustomerID
WHERE o.OrderID is NULL

--Question 3.For every product, show ProductName, CategoryName and the supplier's CompanyName. Then limit the result to products from suppliers in Japan.
SELECT 
	p.ProductName,
	c.CategoryName, 
	s.CompanyName
from Products p
INNER JOIN Categories c 
ON p.CategoryID = c.CategoryID
INNER JOIN Suppliers s 
ON p.SupplierID = s.SupplierID
WHERE s.Country LIKE 'japan'

--Question 4.Show each employee's full name next to their manager's full name (self join on ReportsTo). The employee with no manager must still appear.
SELECT 
	CONCAT(e.FirstName, ' ', e.LastName) Emp_Name, 
	CONCAT(e1.FirstName, ' ', e1.LastName) ManagerName
FROM Employees e
JOIN Employees e1
	ON e.ReportsTo = e1.EmployeeID

--Question 5.Data-quality check: use a FULL JOIN between Orders and Customers to find any orders with no matching customer, and any customers with no orders, in one query.
SELECT 
	o.OrderID,
    o.CustomerID AS OrderCustomerID,
    c.CustomerID AS CustomerTableID,
    c.CompanyName
FROM Orders o
FULL JOIN Customers c 
ON o.CustomerID = c.CustomerID
WHERE c.CustomerID is NULL OR o.OrderID IS NULL