-- Modify the view to exclude employees whose salaries are below $50,000

DROP VIEW IF EXISTS EmployeeDepartmentView;

CREATE VIEW EmployeeDepartmentView AS
SELECT 
    e.emp_id,
    e.emp_name,
    e.salary,
    d.dept_name
FROM 
    employees e
INNER JOIN 
    departments d ON e.dept_id = d.dept_id
WHERE
    e.salary >= 50000;

SELECT * FROM EmployeeDepartmentView;
