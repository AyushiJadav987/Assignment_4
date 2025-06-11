-- Delete all books that have a NULL value in the author column.


SET SQL_SAFE_UPDATES = 0;
DELETE FROM books
WHERE author IS NULL;
SET SQL_SAFE_UPDATES = 1;