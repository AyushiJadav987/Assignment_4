-- Use the AVG aggregate function to find the average salary of employees in each department

select * from employees;
ALTER TABLE employees ADD salary DECIMAL(10, 2);

UPDATE employees
SET salary = CASE emp_id
    WHEN 101 THEN 60000.00
    WHEN 102 THEN 45000.00
    WHEN 103 THEN 50000.00
    WHEN 104 THEN 70000.00
END
WHERE emp_id IN (101, 102, 103, 104);

SELECT 
    d.dept_name,
    AVG(e.salary) AS avg_salary
FROM 
    departments d
LEFT JOIN 
    employees e ON d.dept_id = e.dept_id
GROUP BY 
    d.dept_id, d.dept_name;