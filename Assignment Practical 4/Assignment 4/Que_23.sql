-- Create a SAVEPOINT before updating the courses table, and use it to roll back specific changes

-- Create a SAVEPOINT before updating
START TRANSACTION;
SAVEPOINT before_update;

-- Perform updates
UPDATE courses SET course_credits = 12 WHERE course_id = 12;
UPDATE courses SET course_credits = 15 WHERE course_id = 13;

ROLLBACK TO SAVEPOINT before_update;
COMMIT;