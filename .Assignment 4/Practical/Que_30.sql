-- Create a view to show all employees along with their department names. 

CREATE VIEW EmployeeDepartmentView AS
SELECT 
    e.emp_id,
    e.emp_name,
    d.dept_name
FROM 
    employees e
INNER JOIN 
    departments d ON e.dept_id = d.dept_id;

SELECT * FROM EmployeeDepartmentView;
