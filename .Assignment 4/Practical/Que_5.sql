-- Create a table teachers with the following columns:
--  teacher_id (Primary Key), teacher_name (NOT NULL), subject (NOT NULL), and email (UNIQUE). 

USE school_db;

CREATE TABLE teachers
(teacher_id INT PRIMARY KEY,
 teacher_name VARCHAR(10) NOT NULL,
 subject VARCHAR (10)NOT NULL,
 email VARCHAR(20) UNIQUE);

INSERT INTO teachers
(teacher_id, teacher_name, subject, email)
VALUES
(101, "yamie", "maths", "yamie123@gmail.com"),
(102, "apexa", "sql", "apexa234@gmail.com"),
(103, "shrddha", "python", "shradh45@gmail.com");



