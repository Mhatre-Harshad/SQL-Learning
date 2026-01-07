-------------------------------------------------------------------------------------------------------------
-- SQL DML (DATA MANIPULATION LANGUAGE)
-------------------------------------------------------------------------------------------------------------
-- DML is used to MANIPULATE data inside database tables.
-- DML Commands include:
-- INSERT, SELECT, UPDATE, DELETE
-------------------------------------------------------------------------------------------------------------

USE CompanyDB;
------------------------------------------------------------------------------------
--  INSERT DATA
------------------------------------------------------------------------------------
-- Used to add new records into a table

INSERT INTO Employee (emp_id, first_name, last_name, age, department, salary)
VALUES
(1, 'Rahul', 'Sharma', 25, 'IT', 45000),
(2, 'Anita', 'Patel', 28, 'HR', 38000),
(3, 'Aman', 'Singh', 30, 'Sales', 52000),
(4, 'Rohit', 'Patil', 29, 'IT', 50000),
(5, 'Harsh', 'Dubey', 24, 'Sales', 30000);


------------------------------------------------------------------------------------
--  DISPLAY DATA
------------------------------------------------------------------------------------
-- Used to retrieve data from table

SELECT * FROM Employee;  -- retrieve all data

SELECT emp_id, first_name, department, salary
FROM Employee
WHERE department = 'IT';   --specific data (only data of employee who work in IT)

------------------------------------------------------------------------------------
--  UPDATE DATA
------------------------------------------------------------------------------------
-- Used to modify existing records

UPDATE Employee
SET salary = salary + 5000
WHERE emp_id = 1;

UPDATE Employee
SET department = 'Operations'
WHERE department = 'Sales';

SELECT * FROM Employee;  -- all data
------------------------------------------------------------------------------------
--  DELETE DATA
------------------------------------------------------------------------------------
-- Used to remove specific records

DELETE FROM Employee
WHERE emp_id = 2;

SELECT * FROM Employee;  -- all data

------------------------------------------------------------------------------------
--  DELETE WITH CONDITION
------------------------------------------------------------------------------------

DELETE FROM Employee
WHERE salary < 40000;

SELECT * FROM Employee;  -- all data
-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------

