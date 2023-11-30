-- Script to create Employee table
CREATE TABLE Employee (
    Id INT PRIMARY KEY,
    EmployeeId VARCHAR(10) UNIQUE,
    FULLName VARCHAR(100),
    BirthDate DATE,
    Address VARCHAR(500)
)

-- Script to create PositionHistory table
CREATE TABLE PositionHistory (
    Id INT PRIMARY KEY
    PosId VARCHAR(10),
    PosTitle VARCHAR (100),
    EmployeeId VARCHAR(10),
    StartDate DATE,
    EndDate DATE,
    CONSTRAINT FK_Employee_PositionHistory FOREIGN KEY (EmployeeId) REFERENCES Employee(EmployeeId)
)


-- Insert sample data
INSERT INTO Employee (Id, EmployeeId, FullName, BirthDate, Address)
VALUES
    (1, 10105001, 'Ali Anton', '1982-08-19', 'Jakarta Utara'),
    (2, 10105002, 'Rara Siva', '1982-01-01', 'Mandalika'),
    (3, 10105003, 'Rini Aini', '1982-02-20', 'Sumbawa Besar'),
    (4, 10105004, 'Budi', '1982-02-22', 'Mataram Kota')

-- Insert sample data
INSERT INTO PositionHistory (Id, PosId, PosTitle, EmployeeID, StartDate, EndDate)
VALUES
    (1, 50000, 'IT Manager', 10105001, '2022-01-01', '2022-02-28'),
    (2, 50001, 'IT Sr. Manager', 10105001, '2022-03-01', '2022-12-31'),
    (3, 50002, 'Programmer Analyst', 10105002, '2022-01-01', '2022-02-28'),
    (4, 50003, 'Sr. Programmer Analyst', 10105002, '2022-03-01', '2022-12-31'),
    (5, 50004, 'IT Admin', 10105003, '2022-01-01', '2022-02-28'),
    (6, 50005, 'IT Secretary', 10105003, '2022-03-01', '2022-12-31')