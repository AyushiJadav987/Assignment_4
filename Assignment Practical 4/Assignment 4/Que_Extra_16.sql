-- Increase the price of all books published before 2015 by 10%.

SET SQL_SAFE_UPDATES = 0;

UPDATE books
SET price = price * 1.10
WHERE year_of_publication < 2015;

SET SQL_SAFE_UPDATES = 1;
