-- Insert books, use SAVEPOINT, and ROLLBACK

DELIMITER $$

CREATE PROCEDURE InsertBooksWithRollback3()
BEGIN
  START TRANSACTION;
  INSERT INTO books (book_id, title, author, price) VALUES (11, 'Book A', 'Author A', 80);
  INSERT INTO books (book_id, title, author, price) VALUES (12, 'Book B', 'Author B', 90);
  COMMIT;

  START TRANSACTION;
  SAVEPOINT after_commit;
  INSERT INTO books (book_id, title, author, price) VALUES (13, 'Book C', 'Author C', 100);
  ROLLBACK TO SAVEPOINT after_commit;
  COMMIT;
END$$

DELIMITER ;

CALL InsertBooksWithRollback3()