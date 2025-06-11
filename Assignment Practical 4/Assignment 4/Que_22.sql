--  Insert additional rows, then use ROLLBACK to undo the last insert operation. 

-- Start a transaction
START TRANSACTION;

-- Insert additional rows
INSERT INTO courses (course_id, course_name, course_duration)
VALUES 
(17, 'Biology', 4),
(18, 'Chemistry', 5);

ROLLBACK;