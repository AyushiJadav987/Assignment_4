-- Drop the course_credits column from the courses table.

USE university_db;

ALTER TABLE courses
DROP COLUMN course_credits;