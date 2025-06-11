-- Create a table members in library_db with columns: member_id, member_name, date_of_membership, and email. Insert five records into this table.

USE library_db;

CREATE TABLE members (
    member_id INT PRIMARY KEY,
    member_name VARCHAR(100),
    date_of_membership DATE,
    email VARCHAR(100)
);

INSERT INTO members (member_id, member_name, date_of_membership, email)
VALUES
(101, 'Rahul Sharma', '2023-01-15', 'rahul.sharma@example.com'),
(102, 'Anjali Mehta', '2023-03-12', 'anjali.mehta@example.com'),
(103, 'Vikram Rao', '2022-11-20', 'vikram.rao@example.com'),
(104, 'Priya Singh', '2024-06-01', 'priya.singh@example.com'),
(105, 'Amitabh Joshi', '2023-09-10', 'amitabh.joshi@example.com');

SELECT * FROM members;

