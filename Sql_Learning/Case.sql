SELECT
	ed.first_name, 
	ed.last_name, 
    age,
	CASE 
    	WHEN age<=30 THEN 'Young'
    	WHEN age between 31 and 50 THEN 'Old'
        WHEN ed.age > =50 THEN 'On deaths door'
    END as age_bracket
from employee_demographics ed


SELECT
    es.first_name, 
    es.last_name, 
    es.salary,
    CASE 
    	WHEN es.salary < 50000 THEN es.salary * .05    
    	WHEN es.salary > 50000 THEN es.salary * .07
        WHEN es.dept_id = 6 THEN es.salary * .10
    END Bonuses
FROM employee_salary es