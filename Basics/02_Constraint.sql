-------------------------------------------------------------------------------------------------------------
-- CONSTRAINTS IN SQL 
-------------------------------------------------------------------------------------------------------------
-- In SQL, Constraints are rules you apply on table columns to ensure data integrity 
-- (i.e correctness and validity of data).
------------------------------------------------------------------------------------
-- 1) NOT NULL
------------------------------------------------------------------------------------
-- Ensures that column must have a value (Can't be NULL)
-- Used for mandatory fields like Name, Email etc.

CREATE TABLE Employee(
    EmpId INT NOT NULL,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100)
);

-- Eg: EmpId and Name must be provided. Email can be NULL.
-- INSERT examples
INSERT INTO Employee (EmpId, Name, Email) VALUES (1, 'Ravi', 'ravi@mail.com');
INSERT INTO Employee (EmpId, Name, Email) VALUES (2, 'Meena', NULL);
INSERT INTO Employee (EmpId, Name, Email) VALUES (3, 'John', 'john@mail.com');
------------------------------------------------------------------------------------
-- 2) UNIQUE
------------------------------------------------------------------------------------
-- Ensures all values in a column are different
-- NULL values allowed but only one in most databases

CREATE TABLE StudentDetails(
    RollNo INT UNIQUE,
    Email VARCHAR(100) UNIQUE,
    Name VARCHAR(100)
);

-- INSERT examples
INSERT INTO StudentDetails (RollNo, Email, Name) VALUES (101, 'abc@gmail.com', 'Ravi');
INSERT INTO StudentDetails (RollNo, Email, Name) VALUES (102, 'xyz@gmail.com', 'Priya');
INSERT INTO StudentDetails (RollNo, Email, Name) VALUES (103, 'lmn@gmail.com', 'Suresh');
------------------------------------------------------------------------------------
-- 3) PRIMARY KEY
------------------------------------------------------------------------------------
-- Every table can have one and only one primary key
-- Identifies each row uniquely
-- Combination of NOT NULL + UNIQUE

CREATE TABLE Customer(
    EmpId INT,
    Name VARCHAR(40),
    Age INT,
    Country VARCHAR(10),
    CONSTRAINT CustomerPK PRIMARY KEY (EmpId)
);

-- INSERT examples
INSERT INTO Customer (EmpId,Name,Age,Country) VALUES (1, 'Raj', 25, 'India');
INSERT INTO Customer (EmpId,Name,Age,Country) VALUES (2, 'Simran', 30, 'USA');
INSERT INTO Customer (EmpId,Name,Age,Country) VALUES (3, 'Amit', 28, 'UK');
------------------------------------------------------------------------------------
-- 4) FOREIGN KEY
------------------------------------------------------------------------------------
-- Used to establish relationship between two tables
-- Ensures the referenced value exists in parent table

CREATE TABLE Orders(
    OrderId INT PRIMARY KEY,
    Product VARCHAR(255),
    CustId INT,
    FOREIGN KEY (CustId) REFERENCES Customer(EmpId)
);

-- INSERT examples
INSERT INTO Orders (OrderId, Product, CustId) VALUES (1001, 'Keyboard', 1);
INSERT INTO Orders (OrderId, Product, CustId) VALUES (1002, 'Mouse', 2);
INSERT INTO Orders (OrderId, Product, CustId) VALUES (1003, 'Monitor', 3);
------------------------------------------------------------------------------------
-- 5) CHECK
------------------------------------------------------------------------------------
-- Ensures values meet the required condition
-- Prevents invalid data from being inserted

CREATE TABLE Product(
    ProdId INT PRIMARY KEY,
    Price DECIMAL(10,2) CHECK (Price > 0),
    Quantity INT CHECK (Quantity BETWEEN 0 AND 100)
);

-- INSERT examples
INSERT INTO Product (ProdId, Price, Quantity) VALUES (501, 99.99, 10);
INSERT INTO Product (ProdId, Price, Quantity) VALUES (502, 150.50, 50);
INSERT INTO Product (ProdId, Price, Quantity) VALUES (503, 5.00, 0);
------------------------------------------------------------------------------------
-- 6) DEFAULT
------------------------------------------------------------------------------------
-- Assigns a default value if no value is provided

CREATE TABLE Accounts(
    AccountID INT,
    Balance DECIMAL(10,2) DEFAULT 0,
    Status VARCHAR(20) DEFAULT 'Active'
);

-- INSERT examples
INSERT INTO Accounts (AccountID) VALUES (1);                   -- Default Balance & Status
INSERT INTO Accounts (AccountID,Balance) VALUES (2,500);     -- Status becomes 'Active'
INSERT INTO Accounts (AccountID,Balance, Status) VALUES (3,1000, 'Inactive');
------------------------------------------------------------------------------------
-- 7) AUTO INCREMENT/ IDENTITY
------------------------------------------------------------------------------------
-- Automatically generates unique ID (starts at 1 and increments)

CREATE TABLE Users(
    UserId INT PRIMARY KEY IDENTITY(1,1),  -- starts at 1, increments by 1
    Username VARCHAR(100) NOT NULL
);

-- INSERT examples (UserId is auto-generated)
INSERT INTO Users (Username) VALUES ('john');
INSERT INTO Users (Username) VALUES ('alex');
INSERT INTO Users (Username) VALUES ('harshad');

