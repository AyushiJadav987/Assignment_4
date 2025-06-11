-- Revoke the INSERT permission from user1 and give it to user2. 

REVOKE INSERT ON school_db.courses FROM 'user1'@'localhost';
GRANT INSERT ON school_db.courses TO 'user2'@'localhost';
