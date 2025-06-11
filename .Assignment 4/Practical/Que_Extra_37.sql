-- Use a FULL OUTER JOIN to retrieve all records from the books and authors tables, including those with no matching entries in the other table.
SELECT b.title, a.first_name AS author_name
FROM books b
LEFT JOIN authors a ON b.author = a.author_id

UNION

SELECT b.title, a.first_name AS author_name
FROM books b
RIGHT JOIN authors a ON b.author = a.author_id;