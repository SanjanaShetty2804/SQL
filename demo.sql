-- 1. Create and use a database (if you haven't yet)
CREATE DATABASE UniversityDB;
USE UniversityDB; 

-- 2. Create the table
CREATE TABLE University (
    UID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Chancellor VARCHAR(100),
    Location VARCHAR(255)
);

-- 3. Add a row so you can see data in your SELECT
INSERT INTO University (UID, Name, Chancellor, Location)
VALUES (1, 'Stanford University', 'Jonathan Levin', 'Stanford, CA');

-- 4. Now run your select
SELECT * FROM University;
