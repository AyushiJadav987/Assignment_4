-- Group books by genre and display the total number of books in each genre.
SELECT genre, COUNT(*) AS total_books
FROM books
GROUP BY genre;