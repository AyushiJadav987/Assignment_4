-- Write a stored procedure to retrieve all books by a particular author.
DELIMITER $$

CREATE PROCEDURE GetBooksByAuthor(IN author_name VARCHAR(100))
BEGIN
  SELECT * FROM books WHERE author = author_name;
END $$

DELIMITER ;