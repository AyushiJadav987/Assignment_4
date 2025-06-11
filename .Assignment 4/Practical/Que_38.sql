-- Write a PL/SQL block using an explicit cursor to retrieve and display employee details.

DELIMITER //

CREATE PROCEDURE ShowEmployeeDetails()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE v_emp_id INT;
    DECLARE v_emp_name VARCHAR(100);
    DECLARE v_salary DECIMAL(10,2);

    DECLARE emp_cursor CURSOR FOR
        SELECT emp_id, emp_name, salary FROM employees;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN emp_cursor;

    read_loop: LOOP
        FETCH emp_cursor INTO v_emp_id, v_emp_name, v_salary;
        IF done THEN
            LEAVE read_loop;
        END IF;

        SELECT CONCAT('ID: ', v_emp_id, ', Name: ', v_emp_name, ', Salary: ', v_salary) AS Employee_Info;
    END LOOP;

    CLOSE emp_cursor;
END;
//

DELIMITER ;


CALL ShowEmployeeDetails();
