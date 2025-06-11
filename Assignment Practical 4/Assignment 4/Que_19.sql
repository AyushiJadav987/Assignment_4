-- : Create two new users user1 and user2 and grant user1 permission to SELECT from the courses table. 

CREATE USER 'user1'@'localhost' IDENTIFIED BY 'password1';
CREATE USER 'user2'@'localhost' IDENTIFIED BY 'password2';

GRANT SELECT ON school_db.courses TO 'user1'@'localhost';


