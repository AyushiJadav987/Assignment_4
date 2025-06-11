-- Create a backup of the members table and then drop the original members table.

CREATE TABLE members_backup AS SELECT * FROM members;
DROP TABLE members;
