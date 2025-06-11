-- Write a stored procedure to retrieve all employees from the employees table based on department.

DELIMITER //

CREATE PROCEDURE GetEmployeesByDepartment (
    IN deptName VARCHAR(100)
)
BEGIN
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
        d.dept_name = deptName;
END //

DELIMITER ;

-- call store procedure
CALL GetEmployeesByDepartment('Engineering');
