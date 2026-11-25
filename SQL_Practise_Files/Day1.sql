/*
 The marketing team wants a mailing list. Return CompanyName,
 City and Country for all customers in Germany or France, sorted by Country and then CompanyName.
*/

SELECT 
    CompanyName, 
    City, 
    Country
from Customers
WHERE Country in ('Germany', 'France')
ORDER BY Country, CompanyName

/*
 List the products that are not discontinued and cost between 20 and 50.
 Show ProductName and UnitPrice, most expensive first, top 10 only. (Check the data type of Discontinued first.)
*/

SELECT top 10
    ProductName, 
    UnitPrice
from Products
WHERE Discontinued = 0 
and UnitPrice BETWEEN 20 and 50
ORDER BY UnitPrice DESC 

/*
3.	How many different countries do customers come from? Then list those countries alphabetically.
*/

SELECT COUNT(DISTINCT Country) AS CountryCount
FROM Customers;

/* 
 Logistics wants late deliveries.
 Return OrderID, OrderDate, RequiredDate, ShippedDate and the number of days late for orders shipped after the required date.
*/

SELECT 
    OrderID, 
    OrderDate,
    RequiredDate,
    ShippedDate, 
    DATEDIFF(DAY, RequiredDate, ShippedDate) as DaysLate
from Orders
where ShippedDate > RequiredDate

/* 
 Find customers whose ContactTitle includes the word "manager" and who have no region recorded.
*/

SELECT * 
from Customers
where ContactTitle like '%manager%'
and Region is NULL