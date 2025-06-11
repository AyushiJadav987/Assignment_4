-- Remove all members who joined before 2020 from the members table.

ALTER TABLE members_backup
ADD COLUMN join_year INT;

SET SQL_SAFE_UPDATES = 0;
UPDATE members_backup
SET join_year = YEAR(date_of_membership);
SET SQL_SAFE_UPDATES = 1;

SET SQL_SAFE_UPDATES = 0;
DELETE FROM members_backup
WHERE join_year < 2020;
SET SQL_SAFE_UPDATES = 1;