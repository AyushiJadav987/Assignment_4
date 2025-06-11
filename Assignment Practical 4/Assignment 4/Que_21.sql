--  Insert a few rows into the courses table and use COMMIT to save the changes. 

SELECT * FROM courses;

-- Start a transaction
START TRANSACTION;

INSERT INTO courses (course_id, course_name, course_duration)
VALUES 
(14, 'english', 6),
(15, 'Physics', 5),
(16, 'Computer', 8);

-- Save the changes
COMMIT;

SELECT * FROM courses;