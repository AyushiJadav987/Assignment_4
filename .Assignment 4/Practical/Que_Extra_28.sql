-- Write a PL/SQL block to insert a new book into the books table and display a confirmation message.

START TRANSACTION;

INSERT INTO books (book_id, title, author, price)
VALUES (4, 'New Book', 'Author Name', 99);

COMMIT;