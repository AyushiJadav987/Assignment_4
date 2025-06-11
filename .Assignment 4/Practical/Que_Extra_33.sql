-- Use a FOR LOOP in PL/SQL to display the details of all books one by one.
DELIMITER $$

CREATE PROCEDURE ShowAllBooks()
BEGIN
  DECLARE done INT DEFAULT FALSE;
  DECLARE v_title VARCHAR(255);
  DECLARE v_author VARCHAR(255);
  DECLARE v_price DECIMAL(10,2);

  DECLARE book_cursor CURSOR FOR
    SELECT title, author, price FROM books;

  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

  OPEN book_cursor;

  read_loop: LOOP
    FETCH book_cursor INTO v_title, v_author, v_price;
    IF done THEN
      LEAVE read_loop;
    END IF;
    SELECT CONCAT('Title: ', v_title, ', Author: ', v_author, ', Price: ', v_price) AS book_info;
  END LOOP;

  CLOSE book_cursor;
END $$

DELIMITER ;
