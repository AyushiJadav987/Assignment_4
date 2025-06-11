-- Use a LEFT JOIN to show all departments, even those without employees

SELECT 
    d.dept_id,
    d.dept_name,
    e.emp_id,
    e.emp_name
FROM 
    departments d
LEFT JOIN 
    employees e ON d.dept_id = e.dept_id;
