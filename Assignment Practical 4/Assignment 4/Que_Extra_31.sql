-- Write a PL/SQL block using constants and perform arithmetic operations on book prices.

DELIMITER $$

CREATE PROCEDURE ShowDiscountedPrice()
BEGIN
  DECLARE c_discount INT DEFAULT 10;
  DECLARE v_price INT DEFAULT 100;
  DECLARE v_final_price INT;

  SET v_final_price = v_price - c_discount;

  SELECT CONCAT('Final price after discount: ', v_final_price) AS message;
END $$

DELIMITER ;