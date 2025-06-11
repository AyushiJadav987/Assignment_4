-- Create a view to display members who joined before 2020.
CREATE VIEW MembersBefore2020 AS
SELECT * FROM members_backup WHERE join_year < 2020;