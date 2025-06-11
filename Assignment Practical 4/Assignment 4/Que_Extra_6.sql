-- Modify the members table to add a UNIQUE constraint on the email column, ensuring that each member has a unique email address

ALTER TABLE members
ADD CONSTRAINT unique_email UNIQUE (email);
