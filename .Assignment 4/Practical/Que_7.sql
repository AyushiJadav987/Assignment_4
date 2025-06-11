--  Create a table courses with columns: 
-- course_id, course_name, and course_credits. Set the course_id as the primary key.

CREATE TABLE courses
(course_id INT PRIMARY KEY,
 course_name VARCHAR(100),
 course_credits INT); 
 
 INSERT INTO courses
 (course_id, course_name, course_credits)
 VALUES
 (11, "backend", 8),
 (12, "frontend", 9),
 (13, "fullstack", 10);
 
 SELECT * FROM courses;
 
DROP TABLE courses;
