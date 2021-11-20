-- DDL

DROP DATABASE IF EXISTS ac3;
CREATE DATABASE ac3;

USE ac3;

CREATE TABLE person(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    age INT NOT NULL
);

-- DML
INSERT INTO person(name, age) VALUES 
('lucas mesquita', 20),
('jonh mayer', 37),
('ringo starr', 50),
('dan reynalds', 28),
('gal gadot', 18)