-- Create a cursor to retrieve books by a particular author

DELIMITER $$

CREATE PROCEDURE GetBooksByAuthor2(IN author_name VARCHAR(100))
BEGIN
  DECLARE done INT DEFAULT 0;
  DECLARE v_title VARCHAR(255);
  DECLARE book_cursor CURSOR FOR SELECT title FROM books WHERE author = author_name;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

  OPEN book_cursor;
  read_loop: LOOP
    FETCH book_cursor INTO v_title;
    IF done THEN
      LEAVE read_loop;
    END IF;
    SELECT CONCAT('Book Title: ', v_title);
  END LOOP;
  CLOSE book_cursor;
END$$

DELIMITER ;

CALL GetBooksByAuthor('Author A');