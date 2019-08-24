
SELECT 
    employee.emp_name
FROM
    employee,
    department
WHERE
    department.emp_id = employee.emp_id
        AND department.name = 'CSE';


SELECT 
    employee.emp_name
FROM
    employee,
    salary
WHERE
    salary.emp_id = employee.emp_id
        AND salary.Gross > 21000;


SELECT 
    salary.da, salary.ta, salary.hra
FROM
    salary,
    employee
WHERE
    employee.emp_id = salary.emp_id
        AND employee.emp_name = 'Rob';

SELECT 
    employee.emp_name, time_off.Daysoff
FROM
    time_off,
    employee
WHERE
    employee.emp_id = time_off.emp_id;


SELECT 
    employee.emp_name, department.Name
FROM
    department,
    employee
WHERE
    employee.emp_id = department.emp_id;


SELECT 
    employee.name_grade
FROM
    department,
    employee
WHERE
    employee.emp_id = department.emp_id
        AND department.Name = 'CSE';


SELECT 
    employee.emp_name, salary.TAX
FROM
    salary,
    employee
WHERE
    employee.emp_id = salary.emp_id;


SELECT 
    employee.emp_name
FROM
    employee
WHERE
    employee.join_date BETWEEN '2007-04-10' AND '2008-08-28';


SELECT 
    employee.email
FROM
    department,
    employee
WHERE
    employee.emp_id = department.emp_id
        AND department.Name = 'CSE';


SELECT 
    time_off.Daysoff
FROM
    time_off,
    employee
WHERE
    employee.emp_id = time_off.emp_id
        AND employee.emp_name = 'Rohim';


ALTER TABLE employee ADD COLUMN employee_phone VARCHAR(20) NULL AFTER join_date;


SELECT 
    employee.emp_name
FROM
    salary,
    employee
WHERE
    employee.emp_id = salary.emp_id
        AND salary.base = '8000';


SELECT 
    employee.emp_name
FROM
    balance,
    employee
WHERE
    employee.emp_id = balance.emp_id
ORDER BY balance.Bank_Balance DESC
LIMIT 1;


SELECT 
    employee.emp_name
FROM
    balance,
    employee
WHERE
    employee.emp_id = balance.emp_id
        AND balance.Loan_Amount > 0;


SELECT 
    balance.Bank_Balance
FROM
    balance,
    employee
WHERE
    employee.emp_id = balance.emp_id
        AND employee.emp_name = 'CSEMP07001';