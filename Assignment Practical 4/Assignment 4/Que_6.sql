--  Implement a FOREIGN KEY constraint to relate the teacher_id from the teachers table with the students table. 

USE school_db;

ALTER TABLE students
ADD COLUMN teacher_id INT;

ALTER TABLE students
ADD CONSTRAINT fk_teacher
FOREIGN KEY (teacher_id)
REFERENCES teachers(teacher_id);
