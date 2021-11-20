-- DDL

DROP DATABASE IF EXISTS ac3;
CREATE DATABASE ac3;

USE ac3;

CREATE TABLE tecnologias(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20)
);

-- DML
INSERT INTO tecnologias(name) VALUES 
('node'),
('javascript'),
('java'),
('python'),
('docker'),
('mysql'),
('mssql')