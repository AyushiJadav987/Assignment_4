-- Perform a transaction where you create a savepoint, insert records, then rollback to the savepoint.

START TRANSACTION;

-- Step 1: Insert a record before savepoint
INSERT INTO employees (emp_id, emp_name, dept_id, salary) VALUES (201, 'Alice', 1, 55000);

-- Step 2: Create a savepoint
SAVEPOINT before_more_inserts;

-- Step 3: Insert more records
INSERT INTO employees (emp_id, emp_name, dept_id, salary) VALUES (202, 'Bob', 2, 60000);
INSERT INTO employees (emp_id, emp_name, dept_id, salary) VALUES (203, 'Charlie', 1, 62000);

-- Step 4: Rollback to the savepoint
ROLLBACK TO SAVEPOINT before_more_inserts;

-- Step 5: Commit only the record before the savepoint
COMMIT;
