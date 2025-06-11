-- : Update the course duration of a specific course using the UPDATE command. 

ALTER TABLE courses
ADD COLUMN course_duration VARCHAR(50);

UPDATE courses
SET course_duration = '6 months'
WHERE course_id = 13;

SELECT * FROM courses;

