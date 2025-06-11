--  Add a CHECK constraint to ensure that the price of books in the books table is greater than 0.

ALTER TABLE books
ADD CONSTRAINT chk_price_positive CHECK (price > 0);
