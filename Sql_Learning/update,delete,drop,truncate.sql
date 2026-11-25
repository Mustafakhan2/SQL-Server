
SELECT * into #temp1 
from Employees

SELECT * from #temp1

UPDATE #temp1
set Salary = 50000
where EmployeeID = 2

DELETE from #temp1
where LastName = 'Davis'


TRUNCATE TABLE #temp1

DROP TABLE #temp1