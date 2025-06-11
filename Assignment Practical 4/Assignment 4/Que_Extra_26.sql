-- Create a trigger to automatically update the last_modified timestamp of the books table whenever a record is updated.

ALTER TABLE books ADD last_modified DATETIME;

CREATE TRIGGER UpdateLastModified
BEFORE UPDATE ON books
FOR EACH ROW
SET NEW.last_modified = NOW();	