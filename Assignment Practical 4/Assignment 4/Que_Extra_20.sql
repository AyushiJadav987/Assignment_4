-- Retrieve the list of books sorted by author in ascending order and limit the results to the top 3 entries.
	SELECT *
	FROM books
	ORDER BY author ASC
	LIMIT 3;