SELECT * from EmployeeRecords
where EmployeeID = 2

SELECT
    EmployeeID, 
    FirstName
from EmployeeRecords
where EmployeeID = 2

SELECT distinct
    FirstName,
    LastName, 
    Department, 
    Salary
FROM EmployeeRecords
where Salary < 75000.00




SELECT EmployeeID, FirstName from Employees
where EmployeeID = 2

SELECT 
    CONCAT(FirstName, ' ', LastName) as Fullname, 
    Department, 
    Salary
from Employees
where Salary > 70000