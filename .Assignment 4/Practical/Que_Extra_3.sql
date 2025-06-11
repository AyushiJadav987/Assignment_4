-- Retrieve all members who joined the library before 2022. Use appropriate SQL syntax with WHERE and ORDER BY.

SELECT * 
FROM members
WHERE date_of_membership < '2022-01-01'
ORDER BY date_of_membership ASC;