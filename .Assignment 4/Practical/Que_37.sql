-- Use a FOR LOOP to iterate through employee records and display their names

DELIMITER //

CREATE PROCEDURE ShowAllEmployeeNames()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE empName VARCHAR(100);

    -- Cursor to select employee names
    DECLARE emp_cursor CURSOR FOR
        SELECT emp_name FROM employees;

    -- Handler for when no more rows are found
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN emp_cursor;

    read_loop: LOOP
        FETCH emp_cursor INTO empName;
        IF done THEN
            LEAVE read_loop;
        END IF;
        SELECT CONCAT('Employee: ', empName) AS result;
    END LOOP;

    CLOSE emp_cursor;
END;
//

DELIMITER ;


CALL ShowAllEmployeeNames();
