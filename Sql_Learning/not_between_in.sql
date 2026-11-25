SELECT * from Employees
where not FirstName = 'John'

SELECT * FROM EmployeeRecords
WHERE Salary BETWEEN 75000 and 85000

SELECT * FROM EmployeeRecords
WHERE Salary NOT BETWEEN 75000 and 85000

SELECT * from EmployeeRecords
WHERE Department in ('HR', 'IT')