-- Write a stored procedure that takes book_id as an argument and returns the price of the book.
DELIMITER $$

CREATE PROCEDURE GetBookPrice(IN bookId INT)
BEGIN
  SELECT price FROM books WHERE book_id = bookId;
END $$

DELIMITER ;