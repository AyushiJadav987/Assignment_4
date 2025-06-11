-- Revoke the INSERT privilege from the user librarian on the books table.

CREATE USER 'librarian'@'%' IDENTIFIED BY 'root@1';
GRANT SELECT ON books TO 'librarian'@'%';
FLUSH PRIVILEGES;
SHOW GRANTS FOR 'librarian'@'%';
REVOKE INSERT ON books FROM librarian;	