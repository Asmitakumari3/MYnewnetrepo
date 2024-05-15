create database BankingDB_Practice

	  	  	  	  
	USE BankingDB_Practice;
	CREATE TABLE BranchInfo (
	branchNo INT PRIMARY KEY,
	branchName VARCHAR(20) NOT NULL,
	branchCity VARCHAR(20),
	branchEmail VARCHAR(20));

	INSERT INTO BranchInfo(branchNo, branchName,branchCity, branchEmail) VALUES
	(10, 'Salt Lake','Kolkata','saltlake@example.com'),
	(20,'Rasberry','Kolkata','rasberry@example.com'),
	(30,'Hi-tech city','Hyderabad','hitechcity@example.com'),
	(40,'Cuff','Mumbai'