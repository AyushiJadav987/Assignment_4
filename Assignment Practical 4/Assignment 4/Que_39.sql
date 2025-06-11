-- Create a cursor to retrieve all courses and display them one by one. 

DELIMITER //

CREATE PROCEDURE ShowAllCourses()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE v_course_id INT;
    DECLARE v_course_name VARCHAR(100);
    DECLARE v_course_credits INT;

    DECLARE course_cursor CURSOR FOR
        SELECT course_id, course_name, course_credits FROM courses;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN course_cursor;

    read_loop: LOOP
        FETCH course_cursor INTO v_course_id, v_course_name, v_course_credits;
        IF done THEN
            LEAVE read_loop;
        END IF;

        SELECT CONCAT('Course ID: ', v_course_id, ', Name: ', v_course_name, ', Credits: ', v_course_credits) AS Course_Info;
    END LOOP;

    CLOSE course_cursor;
END;
//

DELIMITER ;


CALL ShowAllCourses();
