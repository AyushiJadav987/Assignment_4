-- Modify the members table to increase the length of the email column to 100 characters. 

ALTER TABLE members
MODIFY COLUMN email VARCHAR(100);
