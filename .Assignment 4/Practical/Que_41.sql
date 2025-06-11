--  Commit part of a transaction after using a savepoint and then rollback the remaining changes. 

START TRANSACTION;

-- Insert first record
INSERT INTO courses (course_id, course_name, course_credits)
VALUES (21, 'Data Science', 10);

-- Insert second record
INSERT INTO courses (course_id, course_name, course_credits)
VALUES (22, 'AI Fundamentals', 8);

-- Savepoint after initial inserts
SAVEPOINT initial_courses;

-- Insert more records
INSERT INTO courses (course_id, course_name, course_credits)
VALUES (23, 'Cybersecurity', 9),
       (24, 'Cloud Computing', 7);

-- Commit the first part
RELEASE SAVEPOINT initial_courses;
COMMIT;

-- Now rollback any further uncommitted changes (if any)
ROLLBACK;
