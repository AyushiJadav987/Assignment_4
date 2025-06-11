--  Insert five records into the students table and retrieve all records using the SELECT statement. 

USE school_db;

INSERT INTO students
(student_id, student_name, age, class, address)
VALUES
(01, "ayushi", 16, 10, "ahemdabad"),
(02, "vishwa", 10, 5,  "junagadh"),	
(03, "nishtha",16, 12, "gandhinagar");

SELECT * FROM students;
