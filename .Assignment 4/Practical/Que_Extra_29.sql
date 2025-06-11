-- Write a PL/SQL block to display the total number of books in the books table.

DELIMITER $$

CREATE PROCEDURE ShowTotalBooks()
BEGIN
  DECLARE total_books INT;

  SELECT COUNT(*) INTO total_books FROM books;

  -- MySQL doesn't support DBMS_OUTPUT.PUT_LINE
  -- You'd handle output in the application or SELECT the result
  SELECT CONCAT('Total books: ', total_books) AS message;
END $$

DELIMITER ;