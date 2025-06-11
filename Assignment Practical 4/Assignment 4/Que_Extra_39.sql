-- Group members by the year they joined and find the number of members who joined each year.
SELECT join_year, COUNT(*) AS total_members
FROM members_backup
GROUP BY join_year;