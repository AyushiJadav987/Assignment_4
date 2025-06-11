--  Limit the results of the SELECT query to show only the top two courses using LIMIT. 

SELECT * FROM courses
ORDER BY course_duration DESC
LIMIT 2;