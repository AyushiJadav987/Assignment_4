-- Use COMMIT after inserting multiple records into the books table, then make another insertion and perform a ROLLBACK.

use library_db;
INSERT INTO books (book_id, title, author, price) VALUES (1,'Book1', 'Author1', 45);
INSERT INTO books (book_id,title, author, price) VALUES (2,'Book2', 'Author2', 55);
COMMIT;
INSERT INTO books (book_id,title, author, price) VALUES (3,'Book3', 'Author3', 65);
ROLLBACK;
