-- Write a stored procedure that accepts course_id as input and returns the course details. 

DELIMITER //

CREATE PROCEDURE GetCourseDetails (
    IN input_course_id INT
)
BEGIN
    SELECT 
        course_id,
        course_name,
        course_credits
    FROM 
        courses
    WHERE 
        course_id = input_course_id;
END //

DELIMITER ;

CALL GetCourseDetails(12);
