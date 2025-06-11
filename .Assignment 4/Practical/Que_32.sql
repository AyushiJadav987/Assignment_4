-- Create a trigger to automatically log changes to the employees table when a new employee is added.

CREATE TABLE employee_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_id INT,
    emp_name VARCHAR(100),
    action VARCHAR(50),
    change_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER //

CREATE TRIGGER after_employee_insert
AFTER INSERT ON employees
FOR EACH ROW
BEGIN
    INSERT INTO employee_log (emp_id, emp_name, action)
    VALUES (NEW.emp_id, NEW.emp_name, 'INSERT');
END; //

DELIMITER ;
