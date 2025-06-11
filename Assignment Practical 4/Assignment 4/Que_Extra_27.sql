-- Create a trigger that inserts a log entry into a log_changes table whenever a DELETE operation is performed on the books table.
CREATE TRIGGER LogBookDeletion
AFTER DELETE ON books
FOR EACH ROW
INSERT INTO log_changes (change_type, book_id, change_time)
VALUES ('DELETE', OLD.book_id, NOW());