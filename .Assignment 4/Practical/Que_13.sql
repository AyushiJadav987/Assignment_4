--  Insert three records into the courses table using the INSERT command. 

USE school_db;

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

DROP TABLE courses;

