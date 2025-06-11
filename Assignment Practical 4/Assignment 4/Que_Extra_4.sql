-- Write SQL queries to display the titles of books published by a specific author. Sort the results by year_of_publication in descending order. 

SELECT title, year_of_publication
FROM books
WHERE author = 'R.K. Narayan'
ORDER BY year_of_publication DESC;
