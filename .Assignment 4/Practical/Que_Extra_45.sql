-- Transaction with SAVEPOINT and ROLLBACK

DELIMITER $$

CREATE PROCEDURE InsertMemberAndRollback2()
BEGIN
  START TRANSACTION;
  INSERT INTO members_backup (member_id, join_year) VALUES (201, 2025);
  SAVEPOINT before_update;
  UPDATE members_backup SET join_year = 2024 WHERE member_id = 201;
  ROLLBACK TO SAVEPOINT before_update;
  COMMIT;
END$$

DELIMITER ;

CALL InsertMemberAndRollback2();
