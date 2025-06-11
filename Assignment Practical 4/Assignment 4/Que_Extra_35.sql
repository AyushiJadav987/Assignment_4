-- Set a SAVEPOINT before making updates to the members table, perform some updates, and then roll back to the SAVEPOINT.

ALTER TABLE members_backup ADD status VARCHAR(20);

SET SQL_SAFE_UPDATES = 0;
START TRANSACTION;
SAVEPOINT before_update;
UPDATE members_backup SET status = 'active' WHERE join_year = 2021;
ROLLBACK TO SAVEPOINT before_update;