-- Create a database called library_db and a table books with columns: 
-- book_id, title, author, publisher, year_of_publication, and price. Insert five records into the table

# Create the library_db Database
CREATE DATABASE library_db;
USE library_db;

# Create the books Table
CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    publisher VARCHAR(100),
    year_of_publication YEAR,
    price DECIMAL(8,2)
);

# Insert 5 Sample Records
INSERT INTO books (book_id, title, author, publisher, year_of_publication, price)
VALUES
(1, 'Wings of Fire', 'A.P.J. Abdul Kalam', 'Universities Press', 1999, 250.00),
(2, 'The Guide', 'R.K. Narayan', 'Indian Thought Publications', 1958, 180.00),
(3, 'Train to Pakistan', 'Khushwant Singh', 'Penguin India', 1956, 220.00),
(4, 'God of Small Things', 'Arundhati Roy', 'IndiaInk', 1997, 300.00),
(5, 'Discovery of India', 'Jawaharlal Nehru', 'Oxford University Press India', 1946, 350.00);

SELECT * FROM books;


