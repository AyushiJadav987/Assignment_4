-- Perform an INNER JOIN between books and authors tables to display the title of books and their respective authors' names.
SELECT b.title, a.first_name AS author_name
FROM books b
INNER JOIN authors a ON b.author = a.author_id;