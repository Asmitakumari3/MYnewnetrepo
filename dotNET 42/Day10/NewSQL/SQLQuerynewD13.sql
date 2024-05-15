create database learning_views

CREATE TABLE Account (
  accNo INT PRIMARY KEY,
  accName VARCHAR(50),
  accType VARCHAR(20),
  accBalance DECIMAL(10,2),
  accIsActive VARCHAR(20),
  accBranch INT
  );
  CREATE TABLE BranchInfo (
  brNo INT PRIMARY KEY,
  brName VARCHAR(50),
  brCity VARCHAR(50),
  );
  INSERT INTO BranchInfo (brNo, brName, brCity) VALUES
  (1,'Branch 1','City 1'),
    (2,'Branch 2','City 2'),
	  (3,'Branch 3','City 3');

	  ALTER TABLE Account
	  ADD CONSTRAINT fk_accBranch
	  FOREIGN KEY (accBranch) REFERENCES BranchInfo(brNo);

	  INSERT INTO Account(accNo, accName, accType, accBalance,accIsActive, accBranch) VALUES
	  (1, 'John Doe','Savings', 5000.00,'true',1),
	  (2,'Jane Smith','Checking',3000.00,'true',2),
	  (3,'Alice Johnson','Saving',7000.00,'false',1),
	  (4,'Bob Anderson','Checking',1500.00,'true',3),
	  (5,'Sarah Brown','Saving',10000.00, 'true',2),
	  (6,'Michael Lee','Checking',4500.00,'false',3),
	  (7,'Emily Davis','Saving',2000.00,'true',1),
	  (8,'David Wilson','Checking',8000.00,'true',2),
	  (9,'Olivia Martinez','Savings',6000.00,'false',3),
	  (10,'James Taylor','Checking',4000.00,'true',1);



	  CREATE VIEW AccountDetails AS
	  SELECT accNo, accName,accBalance, accBalance *0.05 AS FutureBalance FROM Account;

	  CREATE VIEW SavingsAccountDetails As
	  SELECT accNo, accName,accBalance
	  FROM Account
	  WHERE accType = 'Savings';

	  SELECT b.brName AS BranchName, COUNT(a.accNo) AS TotalAccounts
	  FROM Account a
	  INNER JOIN BranchInfo b ON a.accBranch = b.brNO
	  GROUP BY b.brName;

	  SELECT accNo,accName FROM Account WHERE accBalance<5000;


	  INSERT INTO AccountDetails(accNo, accName, accBalance,FutureBalance)
	  VALUES(11,'New Customer',7000.00, 7000.00*0.05);




