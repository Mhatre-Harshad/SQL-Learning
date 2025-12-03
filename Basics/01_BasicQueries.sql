-- SQL or Sequel stands for Structured Query Language
-- SQL is a standard language for accessing and manipulating databases
-- -------------------------------------------------------------------------------------------------------
-- 1 CREATE DATABASE
-- ---------------------------------------------------------
-- What is Database
 /*
 An SQL Database is a type of relational database that stores information in tables made of rows and columns.
 You use SQL (Structured Query Language) to create, read, update, and delete data in these tables.
*/
-- CREATE = used to create a new database or table

CREATE DATABASE PracticeDB;
-- To Switch into that database
-- USE = select which database you want to work in
USE PracticeDB

-- -------------------------------------------------------------------------------------------------------
-- 2 CREATE TABLE
-- ---------------------------------------------------------
/*A table is where you keep actual records. Each row is one record and each column stores a single type of detail.
 Choosing correct column types like numbers or text makes it easier to add and search data later.
*/
-- CREATE = used to create a new database or table
-- Creating a table named Student
CREATE TABLE Student 
( StudentID INT,  
  Name VARCHAR(50),                          
  Age INT                                   
);

-- -------------------------------------------------------------------------------------------------------
-- 3 INSERT VALUES INTO TABLE
-- ---------------------------------------------------------
-- INSERT = add new data (rows) into a table
INSERT INTO Student (StudentID,Name,Age)
VALUES 
(101,'Harshad Mhatre', 22),
(102,'Mohit Sharma', 21),
(103,'Riya Patel', 20);


-- -------------------------------------------------------------------------------------------------------
-- 4 VIEW /SELECT VALUES
-- ---------------------------------------------------------
-- SELECT = view / read data from a table

-- View all rows and columns
-- * asteriskk
-- * = “ALL”  --> all the records
SELECT * FROM Student;

-- View only specific columns
SELECT StudentID, Name FROM Student;
-- -------------------------------------------------------------------------------------------------------
-- 5 Drop /Delete (Table or Database)
-- ---------------------------------------------------------
-- DROP TABLE = permanently delete a table
DROP TABLE Student;

-- DROP DATABASE = permanently delete a full database
DROP DATABASE PracticeDB;
-- -------------------------------------------------------------------------------------------------------

