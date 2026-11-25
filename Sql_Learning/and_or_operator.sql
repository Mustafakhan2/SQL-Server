SELECT * 
from EmployeeRecords
WHERE
    (Department = 'HR' or Department = 'Finance')
and 
    Salary = 60000