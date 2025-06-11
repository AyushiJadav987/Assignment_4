-- Grant INSERT and UPDATE permissions to the user admin on the members table.

CREATE USER 'admin'@'localhost' IDENTIFIED BY 'root@1';

GRANT INSERT, UPDATE ON members_backup TO 'admin'@'localhost';
FLUSH PRIVILEGES;