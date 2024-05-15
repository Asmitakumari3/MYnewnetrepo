CREATE DATABASE BankingDB1_SQL;
CREATE TABLE BranchInfo (
 branchNo INT PRIMARY KEY,
 branchName VARCHAR(100) UNIQUE NOT NULL,
 branchCity VARCHAR(100) NOT NULL CHECK(branchCity IN('Mumbai','Kolkata','Pune'))
 );
 INSERT INTO BranchInfo(branchNo,branchName,branchCity) VALUES
 (10,'Mumbai Branch 1','Mumbai'),
  (20,'Mumbai Branch 2','Mumbai');
  INSERT INTO BranchInfo(branchNo, branchName, branchCity) VALUES
  (30,'Kolkata Branch 1','Kolkata'),
    (40,'Kolkata Branch 2','Kolkata');

  INSERT INTO BranchInfo(branchNo, branchName, branchCity) VALUES
      (50,'Pune Branch 1','Pune'),
	   (60,'Pune Branch 2','Pune');

CREATE TABLE AccountInfo(
accNo INT PRIMARY KEY IDENTITY(500,1),
accName VARCHAR(100) NOT NULL CHECK(LEN(accName)>=3),
accType VARCHAR(20) NOT NULL CHECK(accType IN('Saving','Current','PF')),
accBalance DECIMAL(10,2)NOT NULL CHECK(accBalance >= 100 AND accBalance <= 1000000),
accIsActive BIT NOT NULL,
accBranch INT,
FOREIGN KEY(accBranch) REFERENCES BranchInfo(branchNo));

INSERT INTO AccountInfo(accName, accType,accBalance,accIsActive,accBranch)VALUES
('John Doe','Saving',5000.00,1,10),
('Jane Smith','Current',70000.00,1,20),
('Alice johnson','Saving',15000.00,1,30),
('Bob Brown','PF',300000.00,1,40),
('Eva Lee','Saving', 8000.00,1,50),
('Mike Wilson','Current',120000.00,1,60),
('Sarah Parker','Saving', 25000.00,1,20),
('David Clark','PF', 500000.00,1,20),
('Lisa Taylor','Saving',6000.00,1,30),
('Kelvin Adams','Current',95000.00,1,40),
('Olivia White','Saving',18000.00,1,50),
('Michael Harries','PF',400000.000,1,60),
('Emily Martinez','Saving',7000.00,1,10),
('William Carter','Current',85000.00,1,20),
('Sophia Anderson','Savings',22000.00,1,30),
('Daniel Thompson','PF',600000.00, 1,40),
('Chloe Rodriguez','Saving', 10000.00,1,50),
('James Evans','Current',110000.00,1,60),
('Emma Garcia','Savings',30000.00,1,20),
('Liam Wilson','PF', 70000.00,1,20);

SELECT * FROM AccountInfo;

select accNo,accName,accBalance from AccountInfo
select*from accountInfo
where accType ='Savings'or accType='PF'
select*from AccountInfo
where accType='Savings' and accBalance>100000

select*from accountinfo
where accName like 'N%'



