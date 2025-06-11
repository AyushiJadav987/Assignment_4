-- Grant SELECT permission to a user named librarian on the books table.

CREATE USER 'librarian'@'localhost' IDENTIFIED BY 'root@1';

GRANT SELECT ON books TO 'librarian'@'localhost';