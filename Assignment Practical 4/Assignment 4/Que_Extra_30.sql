-- Write a PL/SQL block to declare variables for book_id and price, assign values, and display the results.

DELIMITER //

CREATE PROCEDURE DisplayBookInfo()
BEGIN
  DECLARE v_book_id INT DEFAULT 101;
  DECLARE v_price DECIMAL(10,2) DEFAULT 150;

  SELECT CONCAT('Book ID: ', v_book_id) AS message1;
  SELECT CONCAT('Price: ', v_price) AS message2;
END;
//

DELIMITER ;