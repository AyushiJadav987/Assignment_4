-- Create a new database named school_db and a table called students with the following columns:
--  student_id, student_name, age, class, and address.  

CREATE DATABASE school_db;
USE school_db;

CREATE TABLE students
(student_id INT PRIMARY KEY,
student_name VARCHAR (20),
age INT NOT NULL,
class INT,
address VARCHAR (20));

DROP TABLE students;
DROP DATABASE school_db;