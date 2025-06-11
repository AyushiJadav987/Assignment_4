-- Write a PL/SQL block using an IF-THEN condition to check the department of an employee.

DELIMITER //

CREATE PROCEDURE CheckEmployeeDepartment(IN empId INT)
BEGIN
    DECLARE deptName VARCHAR(100);

    SELECT d.dept_name
    INTO deptName
    FROM employees e
    JOIN departments d ON e.dept_id = d.dept_id
    WHERE e.emp_id = empId;

    IF deptName = 'HR' THEN
        SELECT CONCAT('Employee belongs to HR department.') AS result;
    ELSE
        SELECT CONCAT('Employee belongs to ', deptName, ' department.') AS result;
    END IF;
END;
//

DELIMITER ;

CALL CheckEmployeeDepartment(101);

