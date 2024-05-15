create Database BankingDataBase
USE BankingDataBase;
create table IF NOT EXISTS accountDetails(
     accNo INT PRIMARY KEY,
	 accName VARCHAR(50) NOT NULL CHECK(LENGTH(

