-- Create a view to show only the title, author, and price of books from the books table.
CREATE VIEW BookSummary AS
SELECT title, author, price FROM books;