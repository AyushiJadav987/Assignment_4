-- Write a PL/SQL block using an explicit cursor to fetch and display all records from the members table.

DELIMITER $$

CREATE PROCEDURE FetchAllMembers2()
BEGIN
  DECLARE done INT DEFAULT 0;
  DECLARE v_member_id INT;
  DECLARE v_join_year INT;
  DECLARE member_cursor CURSOR FOR SELECT member_id, join_year FROM members_backup;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

  OPEN member_cursor;
  read_loop: LOOP
    FETCH member_cursor INTO v_member_id, v_join_year;
    IF done THEN
      LEAVE read_loop;
    END IF;
    SELECT CONCAT('Member ID: ', v_member_id, ', Joined Year: ', v_join_year);
  END LOOP;
  CLOSE member_cursor;
END$$

DELIMITER ;

CALL FetchAllMembers2();
