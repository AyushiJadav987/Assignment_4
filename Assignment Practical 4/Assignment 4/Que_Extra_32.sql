-- Write a PL/SQL block using IF-THEN-ELSE to check if a book's price is above $100 and print a message accordingly.

DELIMITER $$

CREATE PROCEDURE CheckBookPrice()
BEGIN
  DECLARE v_price INT DEFAULT 120;

  IF v_price > 100 THEN
    SELECT 'The book is expensive.' AS message;
  ELSE
    SELECT 'The book is affordable.' AS message;
  END IF;
END $$

DELIMITER ;
