-- Add a new column genre to the books table. Update the genre for all existing records.

ALTER TABLE books
ADD COLUMN genre VARCHAR(50);

UPDATE books
SET genre = CASE book_id
    WHEN 1 THEN 'Autobiography'
    WHEN 2 THEN 'Fiction'
    WHEN 3 THEN 'Historical Fiction'
    WHEN 4 THEN 'Literary Fiction'
    WHEN 5 THEN 'Non-Fiction'
    ELSE 'Unknown'
END
WHERE book_id IN (1,2,3,4,5);

