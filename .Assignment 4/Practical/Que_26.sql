-- Group employees by department and count the number of employees in each department using GROUP BY.

SELECT 
    d.dept_name,
    COUNT(e.emp_id) AS employee_count
FROM 
    departments d
LEFT JOIN 
    employees e ON d.dept_id = e.dept_id
GROUP BY 
    d.dept_id, d.dept_name;