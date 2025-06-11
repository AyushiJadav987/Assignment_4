-- Create two tables: departments and employees. Perform an INNER JOIN to display employees along with their respective departments

-- Create departments table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100)
);

-- Create employees table with foreign key to departments
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- Insert into departments
INSERT INTO departments (dept_id, dept_name) VALUES
(1, 'HR'),
(2, 'Engineering'),
(3, 'Marketing');

-- Insert into employees
INSERT INTO employees (emp_id, emp_name, dept_id) VALUES
(101, 'Alice', 2),
(102, 'Bob', 1),
(103, 'Charlie', 3),
(104, 'David', 2);

SELECT 
    e.emp_id,
    e.emp_name,
    d.dept_name
FROM 
    employees e
INNER JOIN 
    departments d ON e.dept_id = d.dept_id;