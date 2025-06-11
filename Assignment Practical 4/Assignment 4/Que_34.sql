--  Write a PL/SQL block to print the total number of employees from the employees table

DELIMITER //

CREATE PROCEDURE GetTotalEmployees()
BEGIN
    DECLARE total_employees INT;

    SELECT COUNT(*) INTO total_employees FROM employees;

    SELECT CONCAT('Total number of employees: ', total_employees) AS result;
END //

DELIMITER ;

CALL GetTotalEmployees();
