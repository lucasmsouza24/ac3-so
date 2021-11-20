DROP USER IF EXISTS 'ac3user'@'localhost';
CREATE USER 'ac3user'@'localhost' IDENTIFIED BY 'Urubu100$';

GRANT ALL PRIVILEGES ON ac3.* TO 'ac3user'@'localhost';

FLUSH PRIVILEGES;