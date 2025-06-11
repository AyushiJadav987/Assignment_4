-- Delete a book from the books table where the price is higher than $100. 

SET SQL_SAFE_UPDATES = 0;

DELETE FROM books WHERE price > 100;

SET SQL_SAFE_UPDATES = 1;
