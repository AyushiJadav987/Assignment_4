-- Insert three new authors into the authors table, then update the last name of one of the authors

INSERT INTO authors (author_id, first_name, last_name, country)
VALUES
(101, 'Chetan', 'Bhagat', 'India'),
(102, 'Arundhati', 'Roy', 'India'),
(103, 'Jhumpa', 'Lahiri', 'India/USA');

UPDATE authors
SET last_name = 'Bhagat Sharma'
WHERE author_id = 101;
	