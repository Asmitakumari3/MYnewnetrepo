create database learning_proc_2
use learning_proc_2
CREATE TABLE AccountInfo (
  accNo INT PRIMARY KEY,
  accName VARCHAR(50),
  accType VARCHAR(20),
  accBalance DECIMAL(10,2)
  );

  INSERT INTO AccountInfo (accNo,accName,accType, accBalance) VALUES
  (1,'John Doe','Savings',5000.00),
  (2,'Jane Smith','Checking',3500.00),
  (3,'Alena Johnson','Saving',7000.00),
  (4,'Annu ROY','Checking', 10000.75),
  (5,'Anni Rana','Saving',9000.60),
  (6,'Ashu mishra','Checking',4000.00),
  (7,'Aashu Roy','Saving',3000.00),
  (8,'David Miller','Checking',4000.00),
  (9,'Lisa Garica','Saving',3000.00),
  (10,'Kevin Roy','Checking',8000.00);



  create procedure proc_Transact @accNo int, @amt int, @action varchar(10)
                                 @billPayCustID bigint= 0, @transferAccNo int =0)
  as
  begin




  CREATE TABLE employeeInfo (
    empno INT PRIMARY KEY,
	empName VARCHAR(100),
	empDesignation 
  if(@action = 'Withdraw')
    begin
	update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
    end
 else if (@action = 'Deposit')
    begin
	   update Accountsinfo set accBalance = accBalance + @amt where accNo
    end
else if (@action = 'CheckBalance')
    begin
	     select Accounts info



		 create database learning_proc_2

use learning_proc_2

create table AccountsInfo
(
	accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
)
insert into AccountsInfo values(1,'Nikhil','Savings',6000)
insert into AccountsInfo values(2,'Rashmi','Current',7000)
insert into AccountsInfo values(3,'Dimple','Savings',9000)
insert into AccountsInfo values(4,'Mohit','Savings',10000)
insert into AccountsInfo values(5,'Rohit','Savings',1600)
insert into AccountsInfo values(6,'Mahesh','Savings',18000)
insert into AccountsInfo values(7,'Suresh','Current',2000)
insert into AccountsInfo values(8,'Ramesh','Savings',12000)
insert into AccountsInfo values(9,'Kritika','Savings',98000)
insert into AccountsInfo values(10,'Monika','Current',140000)

--user should be able to withdraw, deposit, transfer, bill pay,checkBalance - we can create a

create procedure proc_Transact(@accNo int, @amt int,@action varchar(10),
							   @billPayCustID bigint = 0, @transferAccNo int = 0)
as
begin
	if(@action = 'Withdraw')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	else if(@action = 'Deposit')
		begin
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @accNo
		end
	else if(@action = 'CheckBalance')
		begin
			select AccountsInfo.accBalance from AccountsInfo where accNo = @accNo
		end
	else if(@action = 'Transfer')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @transferAccNo
		end
	else if(@action = 'BillPay')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	end
						       


select * from AccountsInfo

exec proc_Transact 1, 2000,'Withdraw'






accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
	--procedure will add a new account and return the new accno back to user

	create procedure proc_newAccount(@accNo int out,
							         @accName varchar(20),
									 @accType varchar(20),
									 @accBalance bigint)
	as
	begin
		declare @newAccNo int;
		set @newAccNo = (select max(accNo) + 1 from AccountsInfo)

		set @accNo = @newAccNo
		insert into AccountsInfo values(@accNo, @accName,@accType,@accBalance)
	--if i say print @accNo - it will print it on the server but we want to send the value on user screen 

	end

	-------------------
	declare @acNo int
	exec proc_newAccount @acNo out, 'Khyati','Savings',8000
	print @acNo


	--print is understood by SSMS only 





	create table transactionInfo
	(
		trNo int primary key,
		fromAccNo int,
		ToAccNo int,
		Amt int,
		datetime date
	)




	create procedure proc_transferFunds(@fromAccNo int,  --reduce the balance of this account
										@ToAccNo int, --increase the balance of this account
										@Amt int, -- this is amount 
										@trsactionNo int out) -- get transaction no from transaction table
	as
	begin
			update AccountsInfo set accBalance = accBalance - @Amt where accNo = @fromAccNo
			update AccountsInfo set accBalance = accBalance + @Amt where accNo = @ToAccNo

			--also store the history in transaction info for future reference
			--let us take the transaction no first and insert into that table
			declare @newTrNo int
			set @newTrNo = (select isnull(max(trNo),500) + 1 from transactionInfo)
			insert into transactionInfo values(@newTrNo,@fromAccNo,@ToAccNo,@Amt,GETDATE())
			set @trsactionNo = @newTrNo
	end

	declare @captureNewTrNo int
	exec proc_transferFunds 1,2,7000,@captureNewTrNo out
--this is execution environment language
--console.writeLine(@captureNewTrNo) -- consoleapp
--alert(@captureNewTrNo) -- javascript
--response.writeLine(@captureNewTrNo) --webapp
print concat('Transfer Successful : Transaction No is, ',@captureNewTrNo)
select * from transactionInfo


create procedure proc_formatPhoneNo(@phNo varchar(20) out)
as
begin
	set @phNo = CONCAT('(',SUBSTRING(@phno,1,3),'-',SUBSTRING(@phno,4,8),')')
end

declare @phoneNo varchar(20) = '0227868693563'
exec proc_formatPhoneNo @phoneNo out
print @phoneNo


















create database learning_proc_2

use learning_proc_2

create table AccountsInfo
(
	accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
)
insert into AccountsInfo values(1,'Nikhil','Savings',6000)
insert into AccountsInfo values(2,'Rashmi','Current',7000)
insert into AccountsInfo values(3,'Dimple','Savings',9000)
insert into AccountsInfo values(4,'Mohit','Savings',10000)
insert into AccountsInfo values(5,'Rohit','Savings',1600)
insert into AccountsInfo values(6,'Mahesh','Savings',18000)
insert into AccountsInfo values(7,'Suresh','Current',2000)
insert into AccountsInfo values(8,'Ramesh','Savings',12000)
insert into AccountsInfo values(9,'Kritika','Savings',98000)
insert into AccountsInfo values(10,'Monika','Current',140000)

--user should be able to withdraw, deposit, transfer, bill pay,checkBalance - we can create a

create procedure proc_Transact(@accNo int, @amt int,@action varchar(10),
							   @billPayCustID bigint = 0, @transferAccNo int = 0)
as
begin
	if(@action = 'Withdraw')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	else if(@action = 'Deposit')
		begin
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @accNo
		end
	else if(@action = 'CheckBalance')
		begin
			select AccountsInfo.accBalance from AccountsInfo where accNo = @accNo
		end
	else if(@action = 'Transfer')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @transferAccNo
		end
	else if(@action = 'BillPay')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	end
						       


select * from AccountsInfo

exec proc_Transact 1, 2000,'Withdraw'






accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
	--procedure will add a new account and return the new accno back to user

	create procedure proc_newAccount(@accNo int out,
							         @accName varchar(20),
									 @accType varchar(20),
									 @accBalance bigint)
	as
	begin
		declare @newAccNo int;
		set @newAccNo = (select max(accNo) + 1 from AccountsInfo)

		set @accNo = @newAccNo
		insert into AccountsInfo values(@accNo, @accName,@accType,@accBalance)
	--if i say print @accNo - it will print it on the server but we want to send the value on user screen 

	end

	-------------------
	declare @acNo int
	exec proc_newAccount @acNo out, 'Khyati','Savings',8000
	print @acNo


	--print is understood by SSMS only 





	create table transactionInfo
	(
		trNo int primary key,
		fromAccNo int,
		ToAccNo int,
		Amt int,
		datetime date
	)




	create procedure proc_transferFunds(@fromAccNo int,  --reduce the balance of this account
										@ToAccNo int, --increase the balance of this account
										@Amt int, -- this is amount 
										@trsactionNo int out) -- get transaction no from transaction table
	as
	begin
			update AccountsInfo set accBalance = accBalance - @Amt where accNo = @fromAccNo
			update AccountsInfo set accBalance = accBalance + @Amt where accNo = @ToAccNo

			--also store the history in transaction info for future reference
			--let us take the transaction no first and insert into that table
			declare @newTrNo int
			set @newTrNo = (select isnull(max(trNo),500) + 1 from transactionInfo)
			insert into transactionInfo values(@newTrNo,@fromAccNo,@ToAccNo,@Amt,GETDATE())
			set @trsactionNo = @newTrNo
	end

	declare @captureNewTrNo int
	exec proc_transferFunds 1,2,7000,@captureNewTrNo out
--this is execution environment language
--console.writeLine(@captureNewTrNo) -- consoleapp
--alert(@captureNewTrNo) -- javascript
--response.writeLine(@captureNewTrNo) --webapp
print concat('Transfer Successful : Transaction No is, ',@captureNewTrNo)
select * from transactionInfo


create procedure proc_formatPhoneNo(@phNo varchar(20) out)
as
begin
	set @phNo = CONCAT('(',SUBSTRING(@phno,1,3),'-',SUBSTRING(@phno,4,8),')')
end

declare @phoneNo varchar(20) = '0227868693563'
exec proc_formatPhoneNo @phoneNo out
print @phoneNo


















create database learning_proc_2

use learning_proc_2

create table AccountsInfo
(
	accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
)
insert into AccountsInfo values(1,'Nikhil','Savings',6000)
insert into AccountsInfo values(2,'Rashmi','Current',7000)
insert into AccountsInfo values(3,'Dimple','Savings',9000)
insert into AccountsInfo values(4,'Mohit','Savings',10000)
insert into AccountsInfo values(5,'Rohit','Savings',1600)
insert into AccountsInfo values(6,'Mahesh','Savings',18000)
insert into AccountsInfo values(7,'Suresh','Current',2000)
insert into AccountsInfo values(8,'Ramesh','Savings',12000)
insert into AccountsInfo values(9,'Kritika','Savings',98000)
insert into AccountsInfo values(10,'Monika','Current',140000)

--user should be able to withdraw, deposit, transfer, bill pay,checkBalance - we can create a

create procedure proc_Transact(@accNo int, @amt int,@action varchar(10),
							   @billPayCustID bigint = 0, @transferAccNo int = 0)
as
begin
	if(@action = 'Withdraw')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	else if(@action = 'Deposit')
		begin
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @accNo
		end
	else if(@action = 'CheckBalance')
		begin
			select AccountsInfo.accBalance from AccountsInfo where accNo = @accNo
		end
	else if(@action = 'Transfer')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @transferAccNo
		end
	else if(@action = 'BillPay')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	end
						       


select * from AccountsInfo

exec proc_Transact 1, 2000,'Withdraw'






accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
	--procedure will add a new account and return the new accno back to user

	create procedure proc_newAccount(@accNo int out,
							         @accName varchar(20),
									 @accType varchar(20),
									 @accBalance bigint)
	as
	begin
		declare @newAccNo int;
		set @newAccNo = (select max(accNo) + 1 from AccountsInfo)

		set @accNo = @newAccNo
		insert into AccountsInfo values(@accNo, @accName,@accType,@accBalance)
	--if i say print @accNo - it will print it on the server but we want to send the value on user screen 

	end

	-------------------
	declare @acNo int
	exec proc_newAccount @acNo out, 'Khyati','Savings',8000
	print @acNo


	--print is understood by SSMS only 





	create table transactionInfo
	(
		trNo int primary key,
		fromAccNo int,
		ToAccNo int,
		Amt int,
		datetime date
	)




	create procedure proc_transferFunds(@fromAccNo int,  --reduce the balance of this account
										@ToAccNo int, --increase the balance of this account
										@Amt int, -- this is amount 
										@trsactionNo int out) -- get transaction no from transaction table
	as
	begin
			update AccountsInfo set accBalance = accBalance - @Amt where accNo = @fromAccNo
			update AccountsInfo set accBalance = accBalance + @Amt where accNo = @ToAccNo

			--also store the history in transaction info for future reference
			--let us take the transaction no first and insert into that table
			declare @newTrNo int
			set @newTrNo = (select isnull(max(trNo),500) + 1 from transactionInfo)
			insert into transactionInfo values(@newTrNo,@fromAccNo,@ToAccNo,@Amt,GETDATE())
			set @trsactionNo = @newTrNo
	end

	declare @captureNewTrNo int
	exec proc_transferFunds 1,2,7000,@captureNewTrNo out
--this is execution environment language
--console.writeLine(@captureNewTrNo) -- consoleapp
--alert(@captureNewTrNo) -- javascript
--response.writeLine(@captureNewTrNo) --webapp
print concat('Transfer Successful : Transaction No is, ',@captureNewTrNo)
select * from transactionInfo


create procedure proc_formatPhoneNo(@phNo varchar(20) out)
as
begin
	set @phNo = CONCAT('(',SUBSTRING(@phno,1,3),'-',SUBSTRING(@phno,4,8),')')
end

declare @phoneNo varchar(20) = '0227868693563'
exec proc_formatPhoneNo @phoneNo out
print @phoneNo


















create database learning_proc_2

use learning_proc_2

create table AccountsInfo
(
	accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
)
insert into AccountsInfo values(1,'Nikhil','Savings',6000)
insert into AccountsInfo values(2,'Rashmi','Current',7000)
insert into AccountsInfo values(3,'Dimple','Savings',9000)
insert into AccountsInfo values(4,'Mohit','Savings',10000)
insert into AccountsInfo values(5,'Rohit','Savings',1600)
insert into AccountsInfo values(6,'Mahesh','Savings',18000)
insert into AccountsInfo values(7,'Suresh','Current',2000)
insert into AccountsInfo values(8,'Ramesh','Savings',12000)
insert into AccountsInfo values(9,'Kritika','Savings',98000)
insert into AccountsInfo values(10,'Monika','Current',140000)

--user should be able to withdraw, deposit, transfer, bill pay,checkBalance - we can create a

create procedure proc_Transact(@accNo int, @amt int,@action varchar(10),
							   @billPayCustID bigint = 0, @transferAccNo int = 0)
as
begin
	if(@action = 'Withdraw')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	else if(@action = 'Deposit')
		begin
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @accNo
		end
	else if(@action = 'CheckBalance')
		begin
			select AccountsInfo.accBalance from AccountsInfo where accNo = @accNo
		end
	else if(@action = 'Transfer')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @transferAccNo
		end
	else if(@action = 'BillPay')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	end
						       


select * from AccountsInfo

exec proc_Transact 1, 2000,'Withdraw'






accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
	--procedure will add a new account and return the new accno back to user

	create procedure proc_newAccount(@accNo int out,
							         @accName varchar(20),
									 @accType varchar(20),
									 @accBalance bigint)
	as
	begin
		declare @newAccNo int;
		set @newAccNo = (select max(accNo) + 1 from AccountsInfo)

		set @accNo = @newAccNo
		insert into AccountsInfo values(@accNo, @accName,@accType,@accBalance)
	--if i say print @accNo - it will print it on the server but we want to send the value on user screen 

	end

	-------------------
	declare @acNo int
	exec proc_newAccount @acNo out, 'Khyati','Savings',8000
	print @acNo


	--print is understood by SSMS only 





	create table transactionInfo
	(
		trNo int primary key,
		fromAccNo int,
		ToAccNo int,
		Amt int,
		datetime date
	)




	create procedure proc_transferFunds(@fromAccNo int,  --reduce the balance of this account
										@ToAccNo int, --increase the balance of this account
										@Amt int, -- this is amount 
										@trsactionNo int out) -- get transaction no from transaction table
	as
	begin
			update AccountsInfo set accBalance = accBalance - @Amt where accNo = @fromAccNo
			update AccountsInfo set accBalance = accBalance + @Amt where accNo = @ToAccNo

			--also store the history in transaction info for future reference
			--let us take the transaction no first and insert into that table
			declare @newTrNo int
			set @newTrNo = (select isnull(max(trNo),500) + 1 from transactionInfo)
			insert into transactionInfo values(@newTrNo,@fromAccNo,@ToAccNo,@Amt,GETDATE())
			set @trsactionNo = @newTrNo
	end

	declare @captureNewTrNo int
	exec proc_transferFunds 1,2,7000,@captureNewTrNo out
--this is execution environment language
--console.writeLine(@captureNewTrNo) -- consoleapp
--alert(@captureNewTrNo) -- javascript
--response.writeLine(@captureNewTrNo) --webapp
print concat('Transfer Successful : Transaction No is, ',@captureNewTrNo)
select * from transactionInfo


create procedure proc_formatPhoneNo(@phNo varchar(20) out)
as
begin
	set @phNo = CONCAT('(',SUBSTRING(@phno,1,3),'-',SUBSTRING(@phno,4,8),')')
end

declare @phoneNo varchar(20) = '0227868693563'
exec proc_formatPhoneNo @phoneNo out
print @phoneNo


















create database learning_proc_2

use learning_proc_2

create table AccountsInfo
(
	accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
)
insert into AccountsInfo values(1,'Nikhil','Savings',6000)
insert into AccountsInfo values(2,'Rashmi','Current',7000)
insert into AccountsInfo values(3,'Dimple','Savings',9000)
insert into AccountsInfo values(4,'Mohit','Savings',10000)
insert into AccountsInfo values(5,'Rohit','Savings',1600)
insert into AccountsInfo values(6,'Mahesh','Savings',18000)
insert into AccountsInfo values(7,'Suresh','Current',2000)
insert into AccountsInfo values(8,'Ramesh','Savings',12000)
insert into AccountsInfo values(9,'Kritika','Savings',98000)
insert into AccountsInfo values(10,'Monika','Current',140000)

--user should be able to withdraw, deposit, transfer, bill pay,checkBalance - we can create a

create procedure proc_Transact(@accNo int, @amt int,@action varchar(10),
							   @billPayCustID bigint = 0, @transferAccNo int = 0)
as
begin
	if(@action = 'Withdraw')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	else if(@action = 'Deposit')
		begin
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @accNo
		end
	else if(@action = 'CheckBalance')
		begin
			select AccountsInfo.accBalance from AccountsInfo where accNo = @accNo
		end
	else if(@action = 'Transfer')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @transferAccNo
		end
	else if(@action = 'BillPay')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	end
						       


select * from AccountsInfo

exec proc_Transact 1, 2000,'Withdraw'






accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
	--procedure will add a new account and return the new accno back to user

	create procedure proc_newAccount(@accNo int out,
							         @accName varchar(20),
									 @accType varchar(20),
									 @accBalance bigint)
	as
	begin
		declare @newAccNo int;
		set @newAccNo = (select max(accNo) + 1 from AccountsInfo)

		set @accNo = @newAccNo
		insert into AccountsInfo values(@accNo, @accName,@accType,@accBalance)
	--if i say print @accNo - it will print it on the server but we want to send the value on user screen 

	end

	-------------------
	declare @acNo int
	exec proc_newAccount @acNo out, 'Khyati','Savings',8000
	print @acNo


	--print is understood by SSMS only 





	create table transactionInfo
	(
		trNo int primary key,
		fromAccNo int,
		ToAccNo int,
		Amt int,
		datetime date
	)




	create procedure proc_transferFunds(@fromAccNo int,  --reduce the balance of this account
										@ToAccNo int, --increase the balance of this account
										@Amt int, -- this is amount 
										@trsactionNo int out) -- get transaction no from transaction table
	as
	begin
			update AccountsInfo set accBalance = accBalance - @Amt where accNo = @fromAccNo
			update AccountsInfo set accBalance = accBalance + @Amt where accNo = @ToAccNo

			--also store the history in transaction info for future reference
			--let us take the transaction no first and insert into that table
			declare @newTrNo int
			set @newTrNo = (select isnull(max(trNo),500) + 1 from transactionInfo)
			insert into transactionInfo values(@newTrNo,@fromAccNo,@ToAccNo,@Amt,GETDATE())
			set @trsactionNo = @newTrNo
	end

	declare @captureNewTrNo int
	exec proc_transferFunds 1,2,7000,@captureNewTrNo out
--this is execution environment language
--console.writeLine(@captureNewTrNo) -- consoleapp
--alert(@captureNewTrNo) -- javascript
--response.writeLine(@captureNewTrNo) --webapp
print concat('Transfer Successful : Transaction No is, ',@captureNewTrNo)
select * from transactionInfo


create procedure proc_formatPhoneNo(@phNo varchar(20) out)
as
begin
	set @phNo = CONCAT('(',SUBSTRING(@phno,1,3),'-',SUBSTRING(@phno,4,8),')')
end

declare @phoneNo varchar(20) = '0227868693563'
exec proc_formatPhoneNo @phoneNo out
print @phoneNo


















create database learning_proc_2

use learning_proc_2

create table AccountsInfo
(
	accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
)
insert into AccountsInfo values(1,'Nikhil','Savings',6000)
insert into AccountsInfo values(2,'Rashmi','Current',7000)
insert into AccountsInfo values(3,'Dimple','Savings',9000)
insert into AccountsInfo values(4,'Mohit','Savings',10000)
insert into AccountsInfo values(5,'Rohit','Savings',1600)
insert into AccountsInfo values(6,'Mahesh','Savings',18000)
insert into AccountsInfo values(7,'Suresh','Current',2000)
insert into AccountsInfo values(8,'Ramesh','Savings',12000)
insert into AccountsInfo values(9,'Kritika','Savings',98000)
insert into AccountsInfo values(10,'Monika','Current',140000)

--user should be able to withdraw, deposit, transfer, bill pay,checkBalance - we can create a

create procedure proc_Transact(@accNo int, @amt int,@action varchar(10),
							   @billPayCustID bigint = 0, @transferAccNo int = 0)
as
begin
	if(@action = 'Withdraw')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	else if(@action = 'Deposit')
		begin
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @accNo
		end
	else if(@action = 'CheckBalance')
		begin
			select AccountsInfo.accBalance from AccountsInfo where accNo = @accNo
		end
	else if(@action = 'Transfer')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @transferAccNo
		end
	else if(@action = 'BillPay')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	end
						       


select * from AccountsInfo

exec proc_Transact 1, 2000,'Withdraw'






accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
	--procedure will add a new account and return the new accno back to user

	create procedure proc_newAccount(@accNo int out,
							         @accName varchar(20),
									 @accType varchar(20),
									 @accBalance bigint)
	as
	begin
		declare @newAccNo int;
		set @newAccNo = (select max(accNo) + 1 from AccountsInfo)

		set @accNo = @newAccNo
		insert into AccountsInfo values(@accNo, @accName,@accType,@accBalance)
	--if i say print @accNo - it will print it on the server but we want to send the value on user screen 

	end

	-------------------
	declare @acNo int
	exec proc_newAccount @acNo out, 'Khyati','Savings',8000
	print @acNo


	--print is understood by SSMS only 





	create table transactionInfo
	(
		trNo int primary key,
		fromAccNo int,
		ToAccNo int,
		Amt int,
		datetime date
	)




	create procedure proc_transferFunds(@fromAccNo int,  --reduce the balance of this account
										@ToAccNo int, --increase the balance of this account
										@Amt int, -- this is amount 
										@trsactionNo int out) -- get transaction no from transaction table
	as
	begin
			update AccountsInfo set accBalance = accBalance - @Amt where accNo = @fromAccNo
			update AccountsInfo set accBalance = accBalance + @Amt where accNo = @ToAccNo

			--also store the history in transaction info for future reference
			--let us take the transaction no first and insert into that table
			declare @newTrNo int
			set @newTrNo = (select isnull(max(trNo),500) + 1 from transactionInfo)
			insert into transactionInfo values(@newTrNo,@fromAccNo,@ToAccNo,@Amt,GETDATE())
			set @trsactionNo = @newTrNo
	end

	declare @captureNewTrNo int
	exec proc_transferFunds 1,2,7000,@captureNewTrNo out
--this is execution environment language
--console.writeLine(@captureNewTrNo) -- consoleapp
--alert(@captureNewTrNo) -- javascript
--response.writeLine(@captureNewTrNo) --webapp
print concat('Transfer Successful : Transaction No is, ',@captureNewTrNo)
select * from transactionInfo


create procedure proc_formatPhoneNo(@phNo varchar(20) out)
as
begin
	set @phNo = CONCAT('(',SUBSTRING(@phno,1,3),'-',SUBSTRING(@phno,4,8),')')
end

declare @phoneNo varchar(20) = '0227868693563'
exec proc_formatPhoneNo @phoneNo out
print @phoneNo


















create database learning_proc_2

use learning_proc_2

create table AccountsInfo
(
	accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
)
insert into AccountsInfo values(1,'Nikhil','Savings',6000)
insert into AccountsInfo values(2,'Rashmi','Current',7000)
insert into AccountsInfo values(3,'Dimple','Savings',9000)
insert into AccountsInfo values(4,'Mohit','Savings',10000)
insert into AccountsInfo values(5,'Rohit','Savings',1600)
insert into AccountsInfo values(6,'Mahesh','Savings',18000)
insert into AccountsInfo values(7,'Suresh','Current',2000)
insert into AccountsInfo values(8,'Ramesh','Savings',12000)
insert into AccountsInfo values(9,'Kritika','Savings',98000)
insert into AccountsInfo values(10,'Monika','Current',140000)

--user should be able to withdraw, deposit, transfer, bill pay,checkBalance - we can create a

create procedure proc_Transact(@accNo int, @amt int,@action varchar(10),
							   @billPayCustID bigint = 0, @transferAccNo int = 0)
as
begin
	if(@action = 'Withdraw')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	else if(@action = 'Deposit')
		begin
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @accNo
		end
	else if(@action = 'CheckBalance')
		begin
			select AccountsInfo.accBalance from AccountsInfo where accNo = @accNo
		end
	else if(@action = 'Transfer')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @transferAccNo
		end
	else if(@action = 'BillPay')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	end
						       


select * from AccountsInfo

exec proc_Transact 1, 2000,'Withdraw'






accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
	--procedure will add a new account and return the new accno back to user

	create procedure proc_newAccount(@accNo int out,
							         @accName varchar(20),
									 @accType varchar(20),
									 @accBalance bigint)
	as
	begin
		declare @newAccNo int;
		set @newAccNo = (select max(accNo) + 1 from AccountsInfo)

		set @accNo = @newAccNo
		insert into AccountsInfo values(@accNo, @accName,@accType,@accBalance)
	--if i say print @accNo - it will print it on the server but we want to send the value on user screen 

	end

	-------------------
	declare @acNo int
	exec proc_newAccount @acNo out, 'Khyati','Savings',8000
	print @acNo


	--print is understood by SSMS only 





	create table transactionInfo
	(
		trNo int primary key,
		fromAccNo int,
		ToAccNo int,
		Amt int,
		datetime date
	)




	create procedure proc_transferFunds(@fromAccNo int,  --reduce the balance of this account
										@ToAccNo int, --increase the balance of this account
										@Amt int, -- this is amount 
										@trsactionNo int out) -- get transaction no from transaction table
	as
	begin
			update AccountsInfo set accBalance = accBalance - @Amt where accNo = @fromAccNo
			update AccountsInfo set accBalance = accBalance + @Amt where accNo = @ToAccNo

			--also store the history in transaction info for future reference
			--let us take the transaction no first and insert into that table
			declare @newTrNo int
			set @newTrNo = (select isnull(max(trNo),500) + 1 from transactionInfo)
			insert into transactionInfo values(@newTrNo,@fromAccNo,@ToAccNo,@Amt,GETDATE())
			set @trsactionNo = @newTrNo
	end

	declare @captureNewTrNo int
	exec proc_transferFunds 1,2,7000,@captureNewTrNo out
--this is execution environment language
--console.writeLine(@captureNewTrNo) -- consoleapp
--alert(@captureNewTrNo) -- javascript
--response.writeLine(@captureNewTrNo) --webapp
print concat('Transfer Successful : Transaction No is, ',@captureNewTrNo)
select * from transactionInfo


create procedure proc_formatPhoneNo(@phNo varchar(20) out)
as
begin
	set @phNo = CONCAT('(',SUBSTRING(@phno,1,3),'-',SUBSTRING(@phno,4,8),')')
end

declare @phoneNo varchar(20) = '0227868693563'
exec proc_formatPhoneNo @phoneNo out
print @phoneNo


















create database learning_proc_2

use learning_proc_2

create table AccountsInfo
(
	accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
)
insert into AccountsInfo values(1,'Nikhil','Savings',6000)
insert into AccountsInfo values(2,'Rashmi','Current',7000)
insert into AccountsInfo values(3,'Dimple','Savings',9000)
insert into AccountsInfo values(4,'Mohit','Savings',10000)
insert into AccountsInfo values(5,'Rohit','Savings',1600)
insert into AccountsInfo values(6,'Mahesh','Savings',18000)
insert into AccountsInfo values(7,'Suresh','Current',2000)
insert into AccountsInfo values(8,'Ramesh','Savings',12000)
insert into AccountsInfo values(9,'Kritika','Savings',98000)
insert into AccountsInfo values(10,'Monika','Current',140000)

--user should be able to withdraw, deposit, transfer, bill pay,checkBalance - we can create a

create procedure proc_Transact(@accNo int, @amt int,@action varchar(10),
							   @billPayCustID bigint = 0, @transferAccNo int = 0)
as
begin
	if(@action = 'Withdraw')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	else if(@action = 'Deposit')
		begin
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @accNo
		end
	else if(@action = 'CheckBalance')
		begin
			select AccountsInfo.accBalance from AccountsInfo where accNo = @accNo
		end
	else if(@action = 'Transfer')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @transferAccNo
		end
	else if(@action = 'BillPay')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	end
						       


select * from AccountsInfo

exec proc_Transact 1, 2000,'Withdraw'






accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
	--procedure will add a new account and return the new accno back to user

	create procedure proc_newAccount(@accNo int out,
							         @accName varchar(20),
									 @accType varchar(20),
									 @accBalance bigint)
	as
	begin
		declare @newAccNo int;
		set @newAccNo = (select max(accNo) + 1 from AccountsInfo)

		set @accNo = @newAccNo
		insert into AccountsInfo values(@accNo, @accName,@accType,@accBalance)
	--if i say print @accNo - it will print it on the server but we want to send the value on user screen 

	end

	-------------------
	declare @acNo int
	exec proc_newAccount @acNo out, 'Khyati','Savings',8000
	print @acNo


	--print is understood by SSMS only 





	create table transactionInfo
	(
		trNo int primary key,
		fromAccNo int,
		ToAccNo int,
		Amt int,
		datetime date
	)




	create procedure proc_transferFunds(@fromAccNo int,  --reduce the balance of this account
										@ToAccNo int, --increase the balance of this account
										@Amt int, -- this is amount 
										@trsactionNo int out) -- get transaction no from transaction table
	as
	begin
			update AccountsInfo set accBalance = accBalance - @Amt where accNo = @fromAccNo
			update AccountsInfo set accBalance = accBalance + @Amt where accNo = @ToAccNo

			--also store the history in transaction info for future reference
			--let us take the transaction no first and insert into that table
			declare @newTrNo int
			set @newTrNo = (select isnull(max(trNo),500) + 1 from transactionInfo)
			insert into transactionInfo values(@newTrNo,@fromAccNo,@ToAccNo,@Amt,GETDATE())
			set @trsactionNo = @newTrNo
	end

	declare @captureNewTrNo int
	exec proc_transferFunds 1,2,7000,@captureNewTrNo out
--this is execution environment language
--console.writeLine(@captureNewTrNo) -- consoleapp
--alert(@captureNewTrNo) -- javascript
--response.writeLine(@captureNewTrNo) --webapp
print concat('Transfer Successful : Transaction No is, ',@captureNewTrNo)
select * from transactionInfo


create procedure proc_formatPhoneNo(@phNo varchar(20) out)
as
begin
	set @phNo = CONCAT('(',SUBSTRING(@phno,1,3),'-',SUBSTRING(@phno,4,8),')')
end

declare @phoneNo varchar(20) = '0227868693563'
exec proc_formatPhoneNo @phoneNo out
print @phoneNo


















create database learning_proc_2

use learning_proc_2

create table AccountsInfo
(
	accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
)
insert into AccountsInfo values(1,'Nikhil','Savings',6000)
insert into AccountsInfo values(2,'Rashmi','Current',7000)
insert into AccountsInfo values(3,'Dimple','Savings',9000)
insert into AccountsInfo values(4,'Mohit','Savings',10000)
insert into AccountsInfo values(5,'Rohit','Savings',1600)
insert into AccountsInfo values(6,'Mahesh','Savings',18000)
insert into AccountsInfo values(7,'Suresh','Current',2000)
insert into AccountsInfo values(8,'Ramesh','Savings',12000)
insert into AccountsInfo values(9,'Kritika','Savings',98000)
insert into AccountsInfo values(10,'Monika','Current',140000)

--user should be able to withdraw, deposit, transfer, bill pay,checkBalance - we can create a

create procedure proc_Transact(@accNo int, @amt int,@action varchar(10),
							   @billPayCustID bigint = 0, @transferAccNo int = 0)
as
begin
	if(@action = 'Withdraw')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	else if(@action = 'Deposit')
		begin
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @accNo
		end
	else if(@action = 'CheckBalance')
		begin
			select AccountsInfo.accBalance from AccountsInfo where accNo = @accNo
		end
	else if(@action = 'Transfer')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @transferAccNo
		end
	else if(@action = 'BillPay')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	end
						       


select * from AccountsInfo

exec proc_Transact 1, 2000,'Withdraw'






accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
	--procedure will add a new account and return the new accno back to user

	create procedure proc_newAccount(@accNo int out,
							         @accName varchar(20),
									 @accType varchar(20),
									 @accBalance bigint)
	as
	begin
		declare @newAccNo int;
		set @newAccNo = (select max(accNo) + 1 from AccountsInfo)

		set @accNo = @newAccNo
		insert into AccountsInfo values(@accNo, @accName,@accType,@accBalance)
	--if i say print @accNo - it will print it on the server but we want to send the value on user screen 

	end

	-------------------
	declare @acNo int
	exec proc_newAccount @acNo out, 'Khyati','Savings',8000
	print @acNo


	--print is understood by SSMS only 





	create table transactionInfo
	(
		trNo int primary key,
		fromAccNo int,
		ToAccNo int,
		Amt int,
		datetime date
	)




	create procedure proc_transferFunds(@fromAccNo int,  --reduce the balance of this account
										@ToAccNo int, --increase the balance of this account
										@Amt int, -- this is amount 
										@trsactionNo int out) -- get transaction no from transaction table
	as
	begin
			update AccountsInfo set accBalance = accBalance - @Amt where accNo = @fromAccNo
			update AccountsInfo set accBalance = accBalance + @Amt where accNo = @ToAccNo

			--also store the history in transaction info for future reference
			--let us take the transaction no first and insert into that table
			declare @newTrNo int
			set @newTrNo = (select isnull(max(trNo),500) + 1 from transactionInfo)
			insert into transactionInfo values(@newTrNo,@fromAccNo,@ToAccNo,@Amt,GETDATE())
			set @trsactionNo = @newTrNo
	end

	declare @captureNewTrNo int
	exec proc_transferFunds 1,2,7000,@captureNewTrNo out
--this is execution environment language
--console.writeLine(@captureNewTrNo) -- consoleapp
--alert(@captureNewTrNo) -- javascript
--response.writeLine(@captureNewTrNo) --webapp
print concat('Transfer Successful : Transaction No is, ',@captureNewTrNo)
select * from transactionInfo


create procedure proc_formatPhoneNo(@phNo varchar(20) out)
as
begin
	set @phNo = CONCAT('(',SUBSTRING(@phno,1,3),'-',SUBSTRING(@phno,4,8),')')
end

declare @phoneNo varchar(20) = '0227868693563'
exec proc_formatPhoneNo @phoneNo out
print @phoneNo


















create database learning_proc_2

use learning_proc_2

create table AccountsInfo
(
	accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
)
insert into AccountsInfo values(1,'Nikhil','Savings',6000)
insert into AccountsInfo values(2,'Rashmi','Current',7000)
insert into AccountsInfo values(3,'Dimple','Savings',9000)
insert into AccountsInfo values(4,'Mohit','Savings',10000)
insert into AccountsInfo values(5,'Rohit','Savings',1600)
insert into AccountsInfo values(6,'Mahesh','Savings',18000)
insert into AccountsInfo values(7,'Suresh','Current',2000)
insert into AccountsInfo values(8,'Ramesh','Savings',12000)
insert into AccountsInfo values(9,'Kritika','Savings',98000)
insert into AccountsInfo values(10,'Monika','Current',140000)

--user should be able to withdraw, deposit, transfer, bill pay,checkBalance - we can create a

create procedure proc_Transact(@accNo int, @amt int,@action varchar(10),
							   @billPayCustID bigint = 0, @transferAccNo int = 0)
as
begin
	if(@action = 'Withdraw')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	else if(@action = 'Deposit')
		begin
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @accNo
		end
	else if(@action = 'CheckBalance')
		begin
			select AccountsInfo.accBalance from AccountsInfo where accNo = @accNo
		end
	else if(@action = 'Transfer')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @transferAccNo
		end
	else if(@action = 'BillPay')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	end
						       


select * from AccountsInfo

exec proc_Transact 1, 2000,'Withdraw'






accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
	--procedure will add a new account and return the new accno back to user

	create procedure proc_newAccount(@accNo int out,
							         @accName varchar(20),
									 @accType varchar(20),
									 @accBalance bigint)
	as
	begin
		declare @newAccNo int;
		set @newAccNo = (select max(accNo) + 1 from AccountsInfo)

		set @accNo = @newAccNo
		insert into AccountsInfo values(@accNo, @accName,@accType,@accBalance)
	--if i say print @accNo - it will print it on the server but we want to send the value on user screen 

	end

	-------------------
	declare @acNo int
	exec proc_newAccount @acNo out, 'Khyati','Savings',8000
	print @acNo


	--print is understood by SSMS only 





	create table transactionInfo
	(
		trNo int primary key,
		fromAccNo int,
		ToAccNo int,
		Amt int,
		datetime date
	)




	create procedure proc_transferFunds(@fromAccNo int,  --reduce the balance of this account
										@ToAccNo int, --increase the balance of this account
										@Amt int, -- this is amount 
										@trsactionNo int out) -- get transaction no from transaction table
	as
	begin
			update AccountsInfo set accBalance = accBalance - @Amt where accNo = @fromAccNo
			update AccountsInfo set accBalance = accBalance + @Amt where accNo = @ToAccNo

			--also store the history in transaction info for future reference
			--let us take the transaction no first and insert into that table
			declare @newTrNo int
			set @newTrNo = (select isnull(max(trNo),500) + 1 from transactionInfo)
			insert into transactionInfo values(@newTrNo,@fromAccNo,@ToAccNo,@Amt,GETDATE())
			set @trsactionNo = @newTrNo
	end

	declare @captureNewTrNo int
	exec proc_transferFunds 1,2,7000,@captureNewTrNo out
--this is execution environment language
--console.writeLine(@captureNewTrNo) -- consoleapp
--alert(@captureNewTrNo) -- javascript
--response.writeLine(@captureNewTrNo) --webapp
print concat('Transfer Successful : Transaction No is, ',@captureNewTrNo)
select * from transactionInfo


create procedure proc_formatPhoneNo(@phNo varchar(20) out)
as
begin
	set @phNo = CONCAT('(',SUBSTRING(@phno,1,3),'-',SUBSTRING(@phno,4,8),')')
end

declare @phoneNo varchar(20) = '0227868693563'
exec proc_formatPhoneNo @phoneNo out
print @phoneNo


















create database learning_proc_2

use learning_proc_2

create table AccountsInfo
(
	accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
)
insert into AccountsInfo values(1,'Nikhil','Savings',6000)
insert into AccountsInfo values(2,'Rashmi','Current',7000)
insert into AccountsInfo values(3,'Dimple','Savings',9000)
insert into AccountsInfo values(4,'Mohit','Savings',10000)
insert into AccountsInfo values(5,'Rohit','Savings',1600)
insert into AccountsInfo values(6,'Mahesh','Savings',18000)
insert into AccountsInfo values(7,'Suresh','Current',2000)
insert into AccountsInfo values(8,'Ramesh','Savings',12000)
insert into AccountsInfo values(9,'Kritika','Savings',98000)
insert into AccountsInfo values(10,'Monika','Current',140000)

--user should be able to withdraw, deposit, transfer, bill pay,checkBalance - we can create a

create procedure proc_Transact(@accNo int, @amt int,@action varchar(10),
							   @billPayCustID bigint = 0, @transferAccNo int = 0)
as
begin
	if(@action = 'Withdraw')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	else if(@action = 'Deposit')
		begin
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @accNo
		end
	else if(@action = 'CheckBalance')
		begin
			select AccountsInfo.accBalance from AccountsInfo where accNo = @accNo
		end
	else if(@action = 'Transfer')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @transferAccNo
		end
	else if(@action = 'BillPay')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	end
						       


select * from AccountsInfo

exec proc_Transact 1, 2000,'Withdraw'






accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
	--procedure will add a new account and return the new accno back to user

	create procedure proc_newAccount(@accNo int out,
							         @accName varchar(20),
									 @accType varchar(20),
									 @accBalance bigint)
	as
	begin
		declare @newAccNo int;
		set @newAccNo = (select max(accNo) + 1 from AccountsInfo)

		set @accNo = @newAccNo
		insert into AccountsInfo values(@accNo, @accName,@accType,@accBalance)
	--if i say print @accNo - it will print it on the server but we want to send the value on user screen 

	end

	-------------------
	declare @acNo int
	exec proc_newAccount @acNo out, 'Khyati','Savings',8000
	print @acNo


	--print is understood by SSMS only 





	create table transactionInfo
	(
		trNo int primary key,
		fromAccNo int,
		ToAccNo int,
		Amt int,
		datetime date
	)




	create procedure proc_transferFunds(@fromAccNo int,  --reduce the balance of this account
										@ToAccNo int, --increase the balance of this account
										@Amt int, -- this is amount 
										@trsactionNo int out) -- get transaction no from transaction table
	as
	begin
			update AccountsInfo set accBalance = accBalance - @Amt where accNo = @fromAccNo
			update AccountsInfo set accBalance = accBalance + @Amt where accNo = @ToAccNo

			--also store the history in transaction info for future reference
			--let us take the transaction no first and insert into that table
			declare @newTrNo int
			set @newTrNo = (select isnull(max(trNo),500) + 1 from transactionInfo)
			insert into transactionInfo values(@newTrNo,@fromAccNo,@ToAccNo,@Amt,GETDATE())
			set @trsactionNo = @newTrNo
	end

	declare @captureNewTrNo int
	exec proc_transferFunds 1,2,7000,@captureNewTrNo out
--this is execution environment language
--console.writeLine(@captureNewTrNo) -- consoleapp
--alert(@captureNewTrNo) -- javascript
--response.writeLine(@captureNewTrNo) --webapp
print concat('Transfer Successful : Transaction No is, ',@captureNewTrNo)
select * from transactionInfo


create procedure proc_formatPhoneNo(@phNo varchar(20) out)
as
begin
	set @phNo = CONCAT('(',SUBSTRING(@phno,1,3),'-',SUBSTRING(@phno,4,8),')')
end

declare @phoneNo varchar(20) = '0227868693563'
exec proc_formatPhoneNo @phoneNo out
print @phoneNo


















create database learning_proc_2

use learning_proc_2

create table AccountsInfo
(
	accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
)
insert into AccountsInfo values(1,'Nikhil','Savings',6000)
insert into AccountsInfo values(2,'Rashmi','Current',7000)
insert into AccountsInfo values(3,'Dimple','Savings',9000)
insert into AccountsInfo values(4,'Mohit','Savings',10000)
insert into AccountsInfo values(5,'Rohit','Savings',1600)
insert into AccountsInfo values(6,'Mahesh','Savings',18000)
insert into AccountsInfo values(7,'Suresh','Current',2000)
insert into AccountsInfo values(8,'Ramesh','Savings',12000)
insert into AccountsInfo values(9,'Kritika','Savings',98000)
insert into AccountsInfo values(10,'Monika','Current',140000)

--user should be able to withdraw, deposit, transfer, bill pay,checkBalance - we can create a

create procedure proc_Transact(@accNo int, @amt int,@action varchar(10),
							   @billPayCustID bigint = 0, @transferAccNo int = 0)
as
begin
	if(@action = 'Withdraw')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	else if(@action = 'Deposit')
		begin
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @accNo
		end
	else if(@action = 'CheckBalance')
		begin
			select AccountsInfo.accBalance from AccountsInfo where accNo = @accNo
		end
	else if(@action = 'Transfer')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @transferAccNo
		end
	else if(@action = 'BillPay')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	end
						       


select * from AccountsInfo

exec proc_Transact 1, 2000,'Withdraw'






accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
	--procedure will add a new account and return the new accno back to user

	create procedure proc_newAccount(@accNo int out,
							         @accName varchar(20),
									 @accType varchar(20),
									 @accBalance bigint)
	as
	begin
		declare @newAccNo int;
		set @newAccNo = (select max(accNo) + 1 from AccountsInfo)

		set @accNo = @newAccNo
		insert into AccountsInfo values(@accNo, @accName,@accType,@accBalance)
	--if i say print @accNo - it will print it on the server but we want to send the value on user screen 

	end

	-------------------
	declare @acNo int
	exec proc_newAccount @acNo out, 'Khyati','Savings',8000
	print @acNo


	--print is understood by SSMS only 





	create table transactionInfo
	(
		trNo int primary key,
		fromAccNo int,
		ToAccNo int,
		Amt int,
		datetime date
	)




	create procedure proc_transferFunds(@fromAccNo int,  --reduce the balance of this account
										@ToAccNo int, --increase the balance of this account
										@Amt int, -- this is amount 
										@trsactionNo int out) -- get transaction no from transaction table
	as
	begin
			update AccountsInfo set accBalance = accBalance - @Amt where accNo = @fromAccNo
			update AccountsInfo set accBalance = accBalance + @Amt where accNo = @ToAccNo

			--also store the history in transaction info for future reference
			--let us take the transaction no first and insert into that table
			declare @newTrNo int
			set @newTrNo = (select isnull(max(trNo),500) + 1 from transactionInfo)
			insert into transactionInfo values(@newTrNo,@fromAccNo,@ToAccNo,@Amt,GETDATE())
			set @trsactionNo = @newTrNo
	end

	declare @captureNewTrNo int
	exec proc_transferFunds 1,2,7000,@captureNewTrNo out
--this is execution environment language
--console.writeLine(@captureNewTrNo) -- consoleapp
--alert(@captureNewTrNo) -- javascript
--response.writeLine(@captureNewTrNo) --webapp
print concat('Transfer Successful : Transaction No is, ',@captureNewTrNo)
select * from transactionInfo


create procedure proc_formatPhoneNo(@phNo varchar(20) out)
as
begin
	set @phNo = CONCAT('(',SUBSTRING(@phno,1,3),'-',SUBSTRING(@phno,4,8),')')
end

declare @phoneNo varchar(20) = '0227868693563'
exec proc_formatPhoneNo @phoneNo out
print @phoneNo


















create database learning_proc_2

use learning_proc_2

create table AccountsInfo
(
	accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
)
insert into AccountsInfo values(1,'Nikhil','Savings',6000)
insert into AccountsInfo values(2,'Rashmi','Current',7000)
insert into AccountsInfo values(3,'Dimple','Savings',9000)
insert into AccountsInfo values(4,'Mohit','Savings',10000)
insert into AccountsInfo values(5,'Rohit','Savings',1600)
insert into AccountsInfo values(6,'Mahesh','Savings',18000)
insert into AccountsInfo values(7,'Suresh','Current',2000)
insert into AccountsInfo values(8,'Ramesh','Savings',12000)
insert into AccountsInfo values(9,'Kritika','Savings',98000)
insert into AccountsInfo values(10,'Monika','Current',140000)

--user should be able to withdraw, deposit, transfer, bill pay,checkBalance - we can create a

create procedure proc_Transact(@accNo int, @amt int,@action varchar(10),
							   @billPayCustID bigint = 0, @transferAccNo int = 0)
as
begin
	if(@action = 'Withdraw')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	else if(@action = 'Deposit')
		begin
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @accNo
		end
	else if(@action = 'CheckBalance')
		begin
			select AccountsInfo.accBalance from AccountsInfo where accNo = @accNo
		end
	else if(@action = 'Transfer')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @transferAccNo
		end
	else if(@action = 'BillPay')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	end
						       


select * from AccountsInfo

exec proc_Transact 1, 2000,'Withdraw'






accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
	--procedure will add a new account and return the new accno back to user

	create procedure proc_newAccount(@accNo int out,
							         @accName varchar(20),
									 @accType varchar(20),
									 @accBalance bigint)
	as
	begin
		declare @newAccNo int;
		set @newAccNo = (select max(accNo) + 1 from AccountsInfo)

		set @accNo = @newAccNo
		insert into AccountsInfo values(@accNo, @accName,@accType,@accBalance)
	--if i say print @accNo - it will print it on the server but we want to send the value on user screen 

	end

	-------------------
	declare @acNo int
	exec proc_newAccount @acNo out, 'Khyati','Savings',8000
	print @acNo


	--print is understood by SSMS only 





	create table transactionInfo
	(
		trNo int primary key,
		fromAccNo int,
		ToAccNo int,
		Amt int,
		datetime date
	)




	create procedure proc_transferFunds(@fromAccNo int,  --reduce the balance of this account
										@ToAccNo int, --increase the balance of this account
										@Amt int, -- this is amount 
										@trsactionNo int out) -- get transaction no from transaction table
	as
	begin
			update AccountsInfo set accBalance = accBalance - @Amt where accNo = @fromAccNo
			update AccountsInfo set accBalance = accBalance + @Amt where accNo = @ToAccNo

			--also store the history in transaction info for future reference
			--let us take the transaction no first and insert into that table
			declare @newTrNo int
			set @newTrNo = (select isnull(max(trNo),500) + 1 from transactionInfo)
			insert into transactionInfo values(@newTrNo,@fromAccNo,@ToAccNo,@Amt,GETDATE())
			set @trsactionNo = @newTrNo
	end

	declare @captureNewTrNo int
	exec proc_transferFunds 1,2,7000,@captureNewTrNo out
--this is execution environment language
--console.writeLine(@captureNewTrNo) -- consoleapp
--alert(@captureNewTrNo) -- javascript
--response.writeLine(@captureNewTrNo) --webapp
print concat('Transfer Successful : Transaction No is, ',@captureNewTrNo)
select * from transactionInfo


create procedure proc_formatPhoneNo(@phNo varchar(20) out)
as
begin
	set @phNo = CONCAT('(',SUBSTRING(@phno,1,3),'-',SUBSTRING(@phno,4,8),')')
end

declare @phoneNo varchar(20) = '0227868693563'
exec proc_formatPhoneNo @phoneNo out
print @phoneNo


















create database learning_proc_2

use learning_proc_2

create table AccountsInfo
(
	accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
)
insert into AccountsInfo values(1,'Nikhil','Savings',6000)
insert into AccountsInfo values(2,'Rashmi','Current',7000)
insert into AccountsInfo values(3,'Dimple','Savings',9000)
insert into AccountsInfo values(4,'Mohit','Savings',10000)
insert into AccountsInfo values(5,'Rohit','Savings',1600)
insert into AccountsInfo values(6,'Mahesh','Savings',18000)
insert into AccountsInfo values(7,'Suresh','Current',2000)
insert into AccountsInfo values(8,'Ramesh','Savings',12000)
insert into AccountsInfo values(9,'Kritika','Savings',98000)
insert into AccountsInfo values(10,'Monika','Current',140000)

--user should be able to withdraw, deposit, transfer, bill pay,checkBalance - we can create a

create procedure proc_Transact(@accNo int, @amt int,@action varchar(10),
							   @billPayCustID bigint = 0, @transferAccNo int = 0)
as
begin
	if(@action = 'Withdraw')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	else if(@action = 'Deposit')
		begin
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @accNo
		end
	else if(@action = 'CheckBalance')
		begin
			select AccountsInfo.accBalance from AccountsInfo where accNo = @accNo
		end
	else if(@action = 'Transfer')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @transferAccNo
		end
	else if(@action = 'BillPay')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	end
						       


select * from AccountsInfo

exec proc_Transact 1, 2000,'Withdraw'






accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
	--procedure will add a new account and return the new accno back to user

	create procedure proc_newAccount(@accNo int out,
							         @accName varchar(20),
									 @accType varchar(20),
									 @accBalance bigint)
	as
	begin
		declare @newAccNo int;
		set @newAccNo = (select max(accNo) + 1 from AccountsInfo)

		set @accNo = @newAccNo
		insert into AccountsInfo values(@accNo, @accName,@accType,@accBalance)
	--if i say print @accNo - it will print it on the server but we want to send the value on user screen 

	end

	-------------------
	declare @acNo int
	exec proc_newAccount @acNo out, 'Khyati','Savings',8000
	print @acNo


	--print is understood by SSMS only 





	create table transactionInfo
	(
		trNo int primary key,
		fromAccNo int,
		ToAccNo int,
		Amt int,
		datetime date
	)




	create procedure proc_transferFunds(@fromAccNo int,  --reduce the balance of this account
										@ToAccNo int, --increase the balance of this account
										@Amt int, -- this is amount 
										@trsactionNo int out) -- get transaction no from transaction table
	as
	begin
			update AccountsInfo set accBalance = accBalance - @Amt where accNo = @fromAccNo
			update AccountsInfo set accBalance = accBalance + @Amt where accNo = @ToAccNo

			--also store the history in transaction info for future reference
			--let us take the transaction no first and insert into that table
			declare @newTrNo int
			set @newTrNo = (select isnull(max(trNo),500) + 1 from transactionInfo)
			insert into transactionInfo values(@newTrNo,@fromAccNo,@ToAccNo,@Amt,GETDATE())
			set @trsactionNo = @newTrNo
	end

	declare @captureNewTrNo int
	exec proc_transferFunds 1,2,7000,@captureNewTrNo out
--this is execution environment language
--console.writeLine(@captureNewTrNo) -- consoleapp
--alert(@captureNewTrNo) -- javascript
--response.writeLine(@captureNewTrNo) --webapp
print concat('Transfer Successful : Transaction No is, ',@captureNewTrNo)
select * from transactionInfo


create procedure proc_formatPhoneNo(@phNo varchar(20) out)
as
begin
	set @phNo = CONCAT('(',SUBSTRING(@phno,1,3),'-',SUBSTRING(@phno,4,8),')')
end

declare @phoneNo varchar(20) = '0227868693563'
exec proc_formatPhoneNo @phoneNo out
print @phoneNo


















create database learning_proc_2

use learning_proc_2

create table AccountsInfo
(
	accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
)
insert into AccountsInfo values(1,'Nikhil','Savings',6000)
insert into AccountsInfo values(2,'Rashmi','Current',7000)
insert into AccountsInfo values(3,'Dimple','Savings',9000)
insert into AccountsInfo values(4,'Mohit','Savings',10000)
insert into AccountsInfo values(5,'Rohit','Savings',1600)
insert into AccountsInfo values(6,'Mahesh','Savings',18000)
insert into AccountsInfo values(7,'Suresh','Current',2000)
insert into AccountsInfo values(8,'Ramesh','Savings',12000)
insert into AccountsInfo values(9,'Kritika','Savings',98000)
insert into AccountsInfo values(10,'Monika','Current',140000)

--user should be able to withdraw, deposit, transfer, bill pay,checkBalance - we can create a

create procedure proc_Transact(@accNo int, @amt int,@action varchar(10),
							   @billPayCustID bigint = 0, @transferAccNo int = 0)
as
begin
	if(@action = 'Withdraw')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	else if(@action = 'Deposit')
		begin
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @accNo
		end
	else if(@action = 'CheckBalance')
		begin
			select AccountsInfo.accBalance from AccountsInfo where accNo = @accNo
		end
	else if(@action = 'Transfer')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @transferAccNo
		end
	else if(@action = 'BillPay')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	end
						       


select * from AccountsInfo

exec proc_Transact 1, 2000,'Withdraw'






accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
	--procedure will add a new account and return the new accno back to user

	create procedure proc_newAccount(@accNo int out,
							         @accName varchar(20),
									 @accType varchar(20),
									 @accBalance bigint)
	as
	begin
		declare @newAccNo int;
		set @newAccNo = (select max(accNo) + 1 from AccountsInfo)

		set @accNo = @newAccNo
		insert into AccountsInfo values(@accNo, @accName,@accType,@accBalance)
	--if i say print @accNo - it will print it on the server but we want to send the value on user screen 

	end

	-------------------
	declare @acNo int
	exec proc_newAccount @acNo out, 'Khyati','Savings',8000
	print @acNo


	--print is understood by SSMS only 





	create table transactionInfo
	(
		trNo int primary key,
		fromAccNo int,
		ToAccNo int,
		Amt int,
		datetime date
	)




	create procedure proc_transferFunds(@fromAccNo int,  --reduce the balance of this account
										@ToAccNo int, --increase the balance of this account
										@Amt int, -- this is amount 
										@trsactionNo int out) -- get transaction no from transaction table
	as
	begin
			update AccountsInfo set accBalance = accBalance - @Amt where accNo = @fromAccNo
			update AccountsInfo set accBalance = accBalance + @Amt where accNo = @ToAccNo

			--also store the history in transaction info for future reference
			--let us take the transaction no first and insert into that table
			declare @newTrNo int
			set @newTrNo = (select isnull(max(trNo),500) + 1 from transactionInfo)
			insert into transactionInfo values(@newTrNo,@fromAccNo,@ToAccNo,@Amt,GETDATE())
			set @trsactionNo = @newTrNo
	end

	declare @captureNewTrNo int
	exec proc_transferFunds 1,2,7000,@captureNewTrNo out
--this is execution environment language
--console.writeLine(@captureNewTrNo) -- consoleapp
--alert(@captureNewTrNo) -- javascript
--response.writeLine(@captureNewTrNo) --webapp
print concat('Transfer Successful : Transaction No is, ',@captureNewTrNo)
select * from transactionInfo


create procedure proc_formatPhoneNo(@phNo varchar(20) out)
as
begin
	set @phNo = CONCAT('(',SUBSTRING(@phno,1,3),'-',SUBSTRING(@phno,4,8),')')
end

declare @phoneNo varchar(20) = '0227868693563'
exec proc_formatPhoneNo @phoneNo out
print @phoneNo


















create database learning_proc_2

use learning_proc_2

create table AccountsInfo
(
	accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
)
insert into AccountsInfo values(1,'Nikhil','Savings',6000)
insert into AccountsInfo values(2,'Rashmi','Current',7000)
insert into AccountsInfo values(3,'Dimple','Savings',9000)
insert into AccountsInfo values(4,'Mohit','Savings',10000)
insert into AccountsInfo values(5,'Rohit','Savings',1600)
insert into AccountsInfo values(6,'Mahesh','Savings',18000)
insert into AccountsInfo values(7,'Suresh','Current',2000)
insert into AccountsInfo values(8,'Ramesh','Savings',12000)
insert into AccountsInfo values(9,'Kritika','Savings',98000)
insert into AccountsInfo values(10,'Monika','Current',140000)

--user should be able to withdraw, deposit, transfer, bill pay,checkBalance - we can create a

create procedure proc_Transact(@accNo int, @amt int,@action varchar(10),
							   @billPayCustID bigint = 0, @transferAccNo int = 0)
as
begin
	if(@action = 'Withdraw')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	else if(@action = 'Deposit')
		begin
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @accNo
		end
	else if(@action = 'CheckBalance')
		begin
			select AccountsInfo.accBalance from AccountsInfo where accNo = @accNo
		end
	else if(@action = 'Transfer')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @transferAccNo
		end
	else if(@action = 'BillPay')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	end
						       


select * from AccountsInfo

exec proc_Transact 1, 2000,'Withdraw'






accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
	--procedure will add a new account and return the new accno back to user

	create procedure proc_newAccount(@accNo int out,
							         @accName varchar(20),
									 @accType varchar(20),
									 @accBalance bigint)
	as
	begin
		declare @newAccNo int;
		set @newAccNo = (select max(accNo) + 1 from AccountsInfo)

		set @accNo = @newAccNo
		insert into AccountsInfo values(@accNo, @accName,@accType,@accBalance)
	--if i say print @accNo - it will print it on the server but we want to send the value on user screen 

	end

	-------------------
	declare @acNo int
	exec proc_newAccount @acNo out, 'Khyati','Savings',8000
	print @acNo


	--print is understood by SSMS only 





	create table transactionInfo
	(
		trNo int primary key,
		fromAccNo int,
		ToAccNo int,
		Amt int,
		datetime date
	)




	create procedure proc_transferFunds(@fromAccNo int,  --reduce the balance of this account
										@ToAccNo int, --increase the balance of this account
										@Amt int, -- this is amount 
										@trsactionNo int out) -- get transaction no from transaction table
	as
	begin
			update AccountsInfo set accBalance = accBalance - @Amt where accNo = @fromAccNo
			update AccountsInfo set accBalance = accBalance + @Amt where accNo = @ToAccNo

			--also store the history in transaction info for future reference
			--let us take the transaction no first and insert into that table
			declare @newTrNo int
			set @newTrNo = (select isnull(max(trNo),500) + 1 from transactionInfo)
			insert into transactionInfo values(@newTrNo,@fromAccNo,@ToAccNo,@Amt,GETDATE())
			set @trsactionNo = @newTrNo
	end

	declare @captureNewTrNo int
	exec proc_transferFunds 1,2,7000,@captureNewTrNo out
--this is execution environment language
--console.writeLine(@captureNewTrNo) -- consoleapp
--alert(@captureNewTrNo) -- javascript
--response.writeLine(@captureNewTrNo) --webapp
print concat('Transfer Successful : Transaction No is, ',@captureNewTrNo)
select * from transactionInfo


create procedure proc_formatPhoneNo(@phNo varchar(20) out)
as
begin
	set @phNo = CONCAT('(',SUBSTRING(@phno,1,3),'-',SUBSTRING(@phno,4,8),')')
end

declare @phoneNo varchar(20) = '0227868693563'
exec proc_formatPhoneNo @phoneNo out
print @phoneNo


















create database learning_proc_2

use learning_proc_2

create table AccountsInfo
(
	accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
)
insert into AccountsInfo values(1,'Nikhil','Savings',6000)
insert into AccountsInfo values(2,'Rashmi','Current',7000)
insert into AccountsInfo values(3,'Dimple','Savings',9000)
insert into AccountsInfo values(4,'Mohit','Savings',10000)
insert into AccountsInfo values(5,'Rohit','Savings',1600)
insert into AccountsInfo values(6,'Mahesh','Savings',18000)
insert into AccountsInfo values(7,'Suresh','Current',2000)
insert into AccountsInfo values(8,'Ramesh','Savings',12000)
insert into AccountsInfo values(9,'Kritika','Savings',98000)
insert into AccountsInfo values(10,'Monika','Current',140000)

--user should be able to withdraw, deposit, transfer, bill pay,checkBalance - we can create a

create procedure proc_Transact(@accNo int, @amt int,@action varchar(10),
							   @billPayCustID bigint = 0, @transferAccNo int = 0)
as
begin
	if(@action = 'Withdraw')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	else if(@action = 'Deposit')
		begin
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @accNo
		end
	else if(@action = 'CheckBalance')
		begin
			select AccountsInfo.accBalance from AccountsInfo where accNo = @accNo
		end
	else if(@action = 'Transfer')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @transferAccNo
		end
	else if(@action = 'BillPay')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	end
						       


select * from AccountsInfo

exec proc_Transact 1, 2000,'Withdraw'






accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
	--procedure will add a new account and return the new accno back to user

	create procedure proc_newAccount(@accNo int out,
							         @accName varchar(20),
									 @accType varchar(20),
									 @accBalance bigint)
	as
	begin
		declare @newAccNo int;
		set @newAccNo = (select max(accNo) + 1 from AccountsInfo)

		set @accNo = @newAccNo
		insert into AccountsInfo values(@accNo, @accName,@accType,@accBalance)
	--if i say print @accNo - it will print it on the server but we want to send the value on user screen 

	end

	-------------------
	declare @acNo int
	exec proc_newAccount @acNo out, 'Khyati','Savings',8000
	print @acNo


	--print is understood by SSMS only 





	create table transactionInfo
	(
		trNo int primary key,
		fromAccNo int,
		ToAccNo int,
		Amt int,
		datetime date
	)




	create procedure proc_transferFunds(@fromAccNo int,  --reduce the balance of this account
										@ToAccNo int, --increase the balance of this account
										@Amt int, -- this is amount 
										@trsactionNo int out) -- get transaction no from transaction table
	as
	begin
			update AccountsInfo set accBalance = accBalance - @Amt where accNo = @fromAccNo
			update AccountsInfo set accBalance = accBalance + @Amt where accNo = @ToAccNo

			--also store the history in transaction info for future reference
			--let us take the transaction no first and insert into that table
			declare @newTrNo int
			set @newTrNo = (select isnull(max(trNo),500) + 1 from transactionInfo)
			insert into transactionInfo values(@newTrNo,@fromAccNo,@ToAccNo,@Amt,GETDATE())
			set @trsactionNo = @newTrNo
	end

	declare @captureNewTrNo int
	exec proc_transferFunds 1,2,7000,@captureNewTrNo out
--this is execution environment language
--console.writeLine(@captureNewTrNo) -- consoleapp
--alert(@captureNewTrNo) -- javascript
--response.writeLine(@captureNewTrNo) --webapp
print concat('Transfer Successful : Transaction No is, ',@captureNewTrNo)
select * from transactionInfo


create procedure proc_formatPhoneNo(@phNo varchar(20) out)
as
begin
	set @phNo = CONCAT('(',SUBSTRING(@phno,1,3),'-',SUBSTRING(@phno,4,8),')')
end

declare @phoneNo varchar(20) = '0227868693563'
exec proc_formatPhoneNo @phoneNo out
print @phoneNo


















create database learning_proc_2

use learning_proc_2

create table AccountsInfo
(
	accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
)
insert into AccountsInfo values(1,'Nikhil','Savings',6000)
insert into AccountsInfo values(2,'Rashmi','Current',7000)
insert into AccountsInfo values(3,'Dimple','Savings',9000)
insert into AccountsInfo values(4,'Mohit','Savings',10000)
insert into AccountsInfo values(5,'Rohit','Savings',1600)
insert into AccountsInfo values(6,'Mahesh','Savings',18000)
insert into AccountsInfo values(7,'Suresh','Current',2000)
insert into AccountsInfo values(8,'Ramesh','Savings',12000)
insert into AccountsInfo values(9,'Kritika','Savings',98000)
insert into AccountsInfo values(10,'Monika','Current',140000)

--user should be able to withdraw, deposit, transfer, bill pay,checkBalance - we can create a

create procedure proc_Transact(@accNo int, @amt int,@action varchar(10),
							   @billPayCustID bigint = 0, @transferAccNo int = 0)
as
begin
	if(@action = 'Withdraw')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	else if(@action = 'Deposit')
		begin
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @accNo
		end
	else if(@action = 'CheckBalance')
		begin
			select AccountsInfo.accBalance from AccountsInfo where accNo = @accNo
		end
	else if(@action = 'Transfer')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @transferAccNo
		end
	else if(@action = 'BillPay')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	end
						       


select * from AccountsInfo

exec proc_Transact 1, 2000,'Withdraw'






accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
	--procedure will add a new account and return the new accno back to user

	create procedure proc_newAccount(@accNo int out,
							         @accName varchar(20),
									 @accType varchar(20),
									 @accBalance bigint)
	as
	begin
		declare @newAccNo int;
		set @newAccNo = (select max(accNo) + 1 from AccountsInfo)

		set @accNo = @newAccNo
		insert into AccountsInfo values(@accNo, @accName,@accType,@accBalance)
	--if i say print @accNo - it will print it on the server but we want to send the value on user screen 

	end

	-------------------
	declare @acNo int
	exec proc_newAccount @acNo out, 'Khyati','Savings',8000
	print @acNo


	--print is understood by SSMS only 





	create table transactionInfo
	(
		trNo int primary key,
		fromAccNo int,
		ToAccNo int,
		Amt int,
		datetime date
	)




	create procedure proc_transferFunds(@fromAccNo int,  --reduce the balance of this account
										@ToAccNo int, --increase the balance of this account
										@Amt int, -- this is amount 
										@trsactionNo int out) -- get transaction no from transaction table
	as
	begin
			update AccountsInfo set accBalance = accBalance - @Amt where accNo = @fromAccNo
			update AccountsInfo set accBalance = accBalance + @Amt where accNo = @ToAccNo

			--also store the history in transaction info for future reference
			--let us take the transaction no first and insert into that table
			declare @newTrNo int
			set @newTrNo = (select isnull(max(trNo),500) + 1 from transactionInfo)
			insert into transactionInfo values(@newTrNo,@fromAccNo,@ToAccNo,@Amt,GETDATE())
			set @trsactionNo = @newTrNo
	end

	declare @captureNewTrNo int
	exec proc_transferFunds 1,2,7000,@captureNewTrNo out
--this is execution environment language
--console.writeLine(@captureNewTrNo) -- consoleapp
--alert(@captureNewTrNo) -- javascript
--response.writeLine(@captureNewTrNo) --webapp
print concat('Transfer Successful : Transaction No is, ',@captureNewTrNo)
select * from transactionInfo


create procedure proc_formatPhoneNo(@phNo varchar(20) out)
as
begin
	set @phNo = CONCAT('(',SUBSTRING(@phno,1,3),'-',SUBSTRING(@phno,4,8),')')
end

declare @phoneNo varchar(20) = '0227868693563'
exec proc_formatPhoneNo @phoneNo out
print @phoneNo


















create database learning_proc_2

use learning_proc_2

create table AccountsInfo
(
	accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
)
insert into AccountsInfo values(1,'Nikhil','Savings',6000)
insert into AccountsInfo values(2,'Rashmi','Current',7000)
insert into AccountsInfo values(3,'Dimple','Savings',9000)
insert into AccountsInfo values(4,'Mohit','Savings',10000)
insert into AccountsInfo values(5,'Rohit','Savings',1600)
insert into AccountsInfo values(6,'Mahesh','Savings',18000)
insert into AccountsInfo values(7,'Suresh','Current',2000)
insert into AccountsInfo values(8,'Ramesh','Savings',12000)
insert into AccountsInfo values(9,'Kritika','Savings',98000)
insert into AccountsInfo values(10,'Monika','Current',140000)

--user should be able to withdraw, deposit, transfer, bill pay,checkBalance - we can create a

create procedure proc_Transact(@accNo int, @amt int,@action varchar(10),
							   @billPayCustID bigint = 0, @transferAccNo int = 0)
as
begin
	if(@action = 'Withdraw')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	else if(@action = 'Deposit')
		begin
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @accNo
		end
	else if(@action = 'CheckBalance')
		begin
			select AccountsInfo.accBalance from AccountsInfo where accNo = @accNo
		end
	else if(@action = 'Transfer')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @transferAccNo
		end
	else if(@action = 'BillPay')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	end
						       


select * from AccountsInfo

exec proc_Transact 1, 2000,'Withdraw'






accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
	--procedure will add a new account and return the new accno back to user

	create procedure proc_newAccount(@accNo int out,
							         @accName varchar(20),
									 @accType varchar(20),
									 @accBalance bigint)
	as
	begin
		declare @newAccNo int;
		set @newAccNo = (select max(accNo) + 1 from AccountsInfo)

		set @accNo = @newAccNo
		insert into AccountsInfo values(@accNo, @accName,@accType,@accBalance)
	--if i say print @accNo - it will print it on the server but we want to send the value on user screen 

	end

	-------------------
	declare @acNo int
	exec proc_newAccount @acNo out, 'Khyati','Savings',8000
	print @acNo


	--print is understood by SSMS only 





	create table transactionInfo
	(
		trNo int primary key,
		fromAccNo int,
		ToAccNo int,
		Amt int,
		datetime date
	)




	create procedure proc_transferFunds(@fromAccNo int,  --reduce the balance of this account
										@ToAccNo int, --increase the balance of this account
										@Amt int, -- this is amount 
										@trsactionNo int out) -- get transaction no from transaction table
	as
	begin
			update AccountsInfo set accBalance = accBalance - @Amt where accNo = @fromAccNo
			update AccountsInfo set accBalance = accBalance + @Amt where accNo = @ToAccNo

			--also store the history in transaction info for future reference
			--let us take the transaction no first and insert into that table
			declare @newTrNo int
			set @newTrNo = (select isnull(max(trNo),500) + 1 from transactionInfo)
			insert into transactionInfo values(@newTrNo,@fromAccNo,@ToAccNo,@Amt,GETDATE())
			set @trsactionNo = @newTrNo
	end

	declare @captureNewTrNo int
	exec proc_transferFunds 1,2,7000,@captureNewTrNo out
--this is execution environment language
--console.writeLine(@captureNewTrNo) -- consoleapp
--alert(@captureNewTrNo) -- javascript
--response.writeLine(@captureNewTrNo) --webapp
print concat('Transfer Successful : Transaction No is, ',@captureNewTrNo)
select * from transactionInfo


create procedure proc_formatPhoneNo(@phNo varchar(20) out)
as
begin
	set @phNo = CONCAT('(',SUBSTRING(@phno,1,3),'-',SUBSTRING(@phno,4,8),')')
end

declare @phoneNo varchar(20) = '0227868693563'
exec proc_formatPhoneNo @phoneNo out
print @phoneNo


















create database learning_proc_2

use learning_proc_2

create table AccountsInfo
(
	accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
)
insert into AccountsInfo values(1,'Nikhil','Savings',6000)
insert into AccountsInfo values(2,'Rashmi','Current',7000)
insert into AccountsInfo values(3,'Dimple','Savings',9000)
insert into AccountsInfo values(4,'Mohit','Savings',10000)
insert into AccountsInfo values(5,'Rohit','Savings',1600)
insert into AccountsInfo values(6,'Mahesh','Savings',18000)
insert into AccountsInfo values(7,'Suresh','Current',2000)
insert into AccountsInfo values(8,'Ramesh','Savings',12000)
insert into AccountsInfo values(9,'Kritika','Savings',98000)
insert into AccountsInfo values(10,'Monika','Current',140000)

--user should be able to withdraw, deposit, transfer, bill pay,checkBalance - we can create a

create procedure proc_Transact(@accNo int, @amt int,@action varchar(10),
							   @billPayCustID bigint = 0, @transferAccNo int = 0)
as
begin
	if(@action = 'Withdraw')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	else if(@action = 'Deposit')
		begin
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @accNo
		end
	else if(@action = 'CheckBalance')
		begin
			select AccountsInfo.accBalance from AccountsInfo where accNo = @accNo
		end
	else if(@action = 'Transfer')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @transferAccNo
		end
	else if(@action = 'BillPay')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	end
						       


select * from AccountsInfo

exec proc_Transact 1, 2000,'Withdraw'






accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
	--procedure will add a new account and return the new accno back to user

	create procedure proc_newAccount(@accNo int out,
							         @accName varchar(20),
									 @accType varchar(20),
									 @accBalance bigint)
	as
	begin
		declare @newAccNo int;
		set @newAccNo = (select max(accNo) + 1 from AccountsInfo)

		set @accNo = @newAccNo
		insert into AccountsInfo values(@accNo, @accName,@accType,@accBalance)
	--if i say print @accNo - it will print it on the server but we want to send the value on user screen 

	end

	-------------------
	declare @acNo int
	exec proc_newAccount @acNo out, 'Khyati','Savings',8000
	print @acNo


	--print is understood by SSMS only 





	create table transactionInfo
	(
		trNo int primary key,
		fromAccNo int,
		ToAccNo int,
		Amt int,
		datetime date
	)




	create procedure proc_transferFunds(@fromAccNo int,  --reduce the balance of this account
										@ToAccNo int, --increase the balance of this account
										@Amt int, -- this is amount 
										@trsactionNo int out) -- get transaction no from transaction table
	as
	begin
			update AccountsInfo set accBalance = accBalance - @Amt where accNo = @fromAccNo
			update AccountsInfo set accBalance = accBalance + @Amt where accNo = @ToAccNo

			--also store the history in transaction info for future reference
			--let us take the transaction no first and insert into that table
			declare @newTrNo int
			set @newTrNo = (select isnull(max(trNo),500) + 1 from transactionInfo)
			insert into transactionInfo values(@newTrNo,@fromAccNo,@ToAccNo,@Amt,GETDATE())
			set @trsactionNo = @newTrNo
	end

	declare @captureNewTrNo int
	exec proc_transferFunds 1,2,7000,@captureNewTrNo out
--this is execution environment language
--console.writeLine(@captureNewTrNo) -- consoleapp
--alert(@captureNewTrNo) -- javascript
--response.writeLine(@captureNewTrNo) --webapp
print concat('Transfer Successful : Transaction No is, ',@captureNewTrNo)
select * from transactionInfo


create procedure proc_formatPhoneNo(@phNo varchar(20) out)
as
begin
	set @phNo = CONCAT('(',SUBSTRING(@phno,1,3),'-',SUBSTRING(@phno,4,8),')')
end

declare @phoneNo varchar(20) = '0227868693563'
exec proc_formatPhoneNo @phoneNo out
print @phoneNo


















create database learning_proc_2

use learning_proc_2

create table AccountsInfo
(
	accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
)
insert into AccountsInfo values(1,'Nikhil','Savings',6000)
insert into AccountsInfo values(2,'Rashmi','Current',7000)
insert into AccountsInfo values(3,'Dimple','Savings',9000)
insert into AccountsInfo values(4,'Mohit','Savings',10000)
insert into AccountsInfo values(5,'Rohit','Savings',1600)
insert into AccountsInfo values(6,'Mahesh','Savings',18000)
insert into AccountsInfo values(7,'Suresh','Current',2000)
insert into AccountsInfo values(8,'Ramesh','Savings',12000)
insert into AccountsInfo values(9,'Kritika','Savings',98000)
insert into AccountsInfo values(10,'Monika','Current',140000)

--user should be able to withdraw, deposit, transfer, bill pay,checkBalance - we can create a

create procedure proc_Transact(@accNo int, @amt int,@action varchar(10),
							   @billPayCustID bigint = 0, @transferAccNo int = 0)
as
begin
	if(@action = 'Withdraw')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	else if(@action = 'Deposit')
		begin
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @accNo
		end
	else if(@action = 'CheckBalance')
		begin
			select AccountsInfo.accBalance from AccountsInfo where accNo = @accNo
		end
	else if(@action = 'Transfer')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @transferAccNo
		end
	else if(@action = 'BillPay')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	end
						       


select * from AccountsInfo

exec proc_Transact 1, 2000,'Withdraw'






accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
	--procedure will add a new account and return the new accno back to user

	create procedure proc_newAccount(@accNo int out,
							         @accName varchar(20),
									 @accType varchar(20),
									 @accBalance bigint)
	as
	begin
		declare @newAccNo int;
		set @newAccNo = (select max(accNo) + 1 from AccountsInfo)

		set @accNo = @newAccNo
		insert into AccountsInfo values(@accNo, @accName,@accType,@accBalance)
	--if i say print @accNo - it will print it on the server but we want to send the value on user screen 

	end

	-------------------
	declare @acNo int
	exec proc_newAccount @acNo out, 'Khyati','Savings',8000
	print @acNo


	--print is understood by SSMS only 





	create table transactionInfo
	(
		trNo int primary key,
		fromAccNo int,
		ToAccNo int,
		Amt int,
		datetime date
	)




	create procedure proc_transferFunds(@fromAccNo int,  --reduce the balance of this account
										@ToAccNo int, --increase the balance of this account
										@Amt int, -- this is amount 
										@trsactionNo int out) -- get transaction no from transaction table
	as
	begin
			update AccountsInfo set accBalance = accBalance - @Amt where accNo = @fromAccNo
			update AccountsInfo set accBalance = accBalance + @Amt where accNo = @ToAccNo

			--also store the history in transaction info for future reference
			--let us take the transaction no first and insert into that table
			declare @newTrNo int
			set @newTrNo = (select isnull(max(trNo),500) + 1 from transactionInfo)
			insert into transactionInfo values(@newTrNo,@fromAccNo,@ToAccNo,@Amt,GETDATE())
			set @trsactionNo = @newTrNo
	end

	declare @captureNewTrNo int
	exec proc_transferFunds 1,2,7000,@captureNewTrNo out
--this is execution environment language
--console.writeLine(@captureNewTrNo) -- consoleapp
--alert(@captureNewTrNo) -- javascript
--response.writeLine(@captureNewTrNo) --webapp
print concat('Transfer Successful : Transaction No is, ',@captureNewTrNo)
select * from transactionInfo


create procedure proc_formatPhoneNo(@phNo varchar(20) out)
as
begin
	set @phNo = CONCAT('(',SUBSTRING(@phno,1,3),'-',SUBSTRING(@phno,4,8),')')
end

declare @phoneNo varchar(20) = '0227868693563'
exec proc_formatPhoneNo @phoneNo out
print @phoneNo


















create database learning_proc_2

use learning_proc_2

create table AccountsInfo
(
	accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
)
insert into AccountsInfo values(1,'Nikhil','Savings',6000)
insert into AccountsInfo values(2,'Rashmi','Current',7000)
insert into AccountsInfo values(3,'Dimple','Savings',9000)
insert into AccountsInfo values(4,'Mohit','Savings',10000)
insert into AccountsInfo values(5,'Rohit','Savings',1600)
insert into AccountsInfo values(6,'Mahesh','Savings',18000)
insert into AccountsInfo values(7,'Suresh','Current',2000)
insert into AccountsInfo values(8,'Ramesh','Savings',12000)
insert into AccountsInfo values(9,'Kritika','Savings',98000)
insert into AccountsInfo values(10,'Monika','Current',140000)

--user should be able to withdraw, deposit, transfer, bill pay,checkBalance - we can create a

create procedure proc_Transact(@accNo int, @amt int,@action varchar(10),
							   @billPayCustID bigint = 0, @transferAccNo int = 0)
as
begin
	if(@action = 'Withdraw')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	else if(@action = 'Deposit')
		begin
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @accNo
		end
	else if(@action = 'CheckBalance')
		begin
			select AccountsInfo.accBalance from AccountsInfo where accNo = @accNo
		end
	else if(@action = 'Transfer')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @transferAccNo
		end
	else if(@action = 'BillPay')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	end
						       


select * from AccountsInfo

exec proc_Transact 1, 2000,'Withdraw'






accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
	--procedure will add a new account and return the new accno back to user

	create procedure proc_newAccount(@accNo int out,
							         @accName varchar(20),
									 @accType varchar(20),
									 @accBalance bigint)
	as
	begin
		declare @newAccNo int;
		set @newAccNo = (select max(accNo) + 1 from AccountsInfo)

		set @accNo = @newAccNo
		insert into AccountsInfo values(@accNo, @accName,@accType,@accBalance)
	--if i say print @accNo - it will print it on the server but we want to send the value on user screen 

	end

	-------------------
	declare @acNo int
	exec proc_newAccount @acNo out, 'Khyati','Savings',8000
	print @acNo


	--print is understood by SSMS only 





	create table transactionInfo
	(
		trNo int primary key,
		fromAccNo int,
		ToAccNo int,
		Amt int,
		datetime date
	)




	create procedure proc_transferFunds(@fromAccNo int,  --reduce the balance of this account
										@ToAccNo int, --increase the balance of this account
										@Amt int, -- this is amount 
										@trsactionNo int out) -- get transaction no from transaction table
	as
	begin
			update AccountsInfo set accBalance = accBalance - @Amt where accNo = @fromAccNo
			update AccountsInfo set accBalance = accBalance + @Amt where accNo = @ToAccNo

			--also store the history in transaction info for future reference
			--let us take the transaction no first and insert into that table
			declare @newTrNo int
			set @newTrNo = (select isnull(max(trNo),500) + 1 from transactionInfo)
			insert into transactionInfo values(@newTrNo,@fromAccNo,@ToAccNo,@Amt,GETDATE())
			set @trsactionNo = @newTrNo
	end

	declare @captureNewTrNo int
	exec proc_transferFunds 1,2,7000,@captureNewTrNo out
--this is execution environment language
--console.writeLine(@captureNewTrNo) -- consoleapp
--alert(@captureNewTrNo) -- javascript
--response.writeLine(@captureNewTrNo) --webapp
print concat('Transfer Successful : Transaction No is, ',@captureNewTrNo)
select * from transactionInfo


create procedure proc_formatPhoneNo(@phNo varchar(20) out)
as
begin
	set @phNo = CONCAT('(',SUBSTRING(@phno,1,3),'-',SUBSTRING(@phno,4,8),')')
end

declare @phoneNo varchar(20) = '0227868693563'
exec proc_formatPhoneNo @phoneNo out
print @phoneNo


















create database learning_proc_2

use learning_proc_2

create table AccountsInfo
(
	accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
)
insert into AccountsInfo values(1,'Nikhil','Savings',6000)
insert into AccountsInfo values(2,'Rashmi','Current',7000)
insert into AccountsInfo values(3,'Dimple','Savings',9000)
insert into AccountsInfo values(4,'Mohit','Savings',10000)
insert into AccountsInfo values(5,'Rohit','Savings',1600)
insert into AccountsInfo values(6,'Mahesh','Savings',18000)
insert into AccountsInfo values(7,'Suresh','Current',2000)
insert into AccountsInfo values(8,'Ramesh','Savings',12000)
insert into AccountsInfo values(9,'Kritika','Savings',98000)
insert into AccountsInfo values(10,'Monika','Current',140000)

--user should be able to withdraw, deposit, transfer, bill pay,checkBalance - we can create a

create procedure proc_Transact(@accNo int, @amt int,@action varchar(10),
							   @billPayCustID bigint = 0, @transferAccNo int = 0)
as
begin
	if(@action = 'Withdraw')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	else if(@action = 'Deposit')
		begin
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @accNo
		end
	else if(@action = 'CheckBalance')
		begin
			select AccountsInfo.accBalance from AccountsInfo where accNo = @accNo
		end
	else if(@action = 'Transfer')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @transferAccNo
		end
	else if(@action = 'BillPay')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	end
						       


select * from AccountsInfo

exec proc_Transact 1, 2000,'Withdraw'


CREATE TABLE empInfo (
    empNo INT PRIMARY KEY AUTO_INCREMENT,
	empName VARCHAR(100),
	empDesignation VARCHAR(50),
	empSalary DECIMAL(10,2),
	empIaActive BOOLEAN DEFAULT TRUE
	);

 CREATE PROCEDURE insertEmployee(
  IN empName_param VARCHAR(100),
  IN empDesignation_param VARCHAR(50),
  IN empSalary_param DECIMAL(10,2),
  OUT empNo_out INT,
  OUT emailAddress_out VARCHAR(100)
  )
  BEGIN
    INSERT INTO empInfo(empName,empDesignation,empSalary)
	VALUES(empName_param, empDesignation_param, empSalary_param);

	SET empNo_out = LAST_INSERT_ID();
	SET emailAddress_out = CONCAT(SUBSTRING_INDEX(empName_param,' ',1),'.',LEFT(empDesignation_param, 2),'@myorg.in');
	END

 CALL insertEmployee('John Doe','Manager',50000,@empNo,@email);
 SELECT @empNo AS NewEmpNo, @email;







accNo int primary key,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
	--procedure will add a new account and return the new accno back to user

	create procedure proc_newAccount(@accNo int out,
							         @accName varchar(20),
									 @accType varchar(20),
									 @accBalance bigint)
	as
	begin
		declare @newAccNo int;
		set @newAccNo = (select max(accNo) + 1 from AccountsInfo)

		set @accNo = @newAccNo
		insert into AccountsInfo values(@accNo, @accName,@accType,@accBalance)
	--if i say print @accNo - it will print it on the server but we want to send the value on user screen 

	end

	-------------------
	declare @acNo int
	exec proc_newAccount @acNo out, 'Khyati','Savings',8000
	print @acNo


	--print is understood by SSMS only 





	create table transactionInfo
	(
		trNo int primary key,
		fromAccNo int,
		ToAccNo int,
		Amt int,
		datetime date
	)




	create procedure proc_transferFunds(@fromAccNo int,  --reduce the balance of this account
										@ToAccNo int, --increase the balance of this account
										@Amt int, -- this is amount 
										@trsactionNo int out) -- get transaction no from transaction table
	as
	begin
			update AccountsInfo set accBalance = accBalance - @Amt where accNo = @fromAccNo
			update AccountsInfo set accBalance = accBalance + @Amt where accNo = @ToAccNo

			--also store the history in transaction info for future reference
			--let us take the transaction no first and insert into that table
			declare @newTrNo int
			set @newTrNo = (select isnull(max(trNo),500) + 1 from transactionInfo)
			insert into transactionInfo values(@newTrNo,@fromAccNo,@ToAccNo,@Amt,GETDATE())
			set @trsactionNo = @newTrNo
	end

	declare @captureNewTrNo int
	exec proc_transferFunds 1,2,7000,@captureNewTrNo out
--this is execution environment language
--console.writeLine(@captureNewTrNo) -- consoleapp
--alert(@captureNewTrNo) -- javascript
--response.writeLine(@captureNewTrNo) --webapp
print concat('Transfer Successful : Transaction No is, ',@captureNewTrNo)
select * from transactionInfo


create procedure proc_formatPhoneNo(@phNo varchar(20) out)
as
begin
	set @phNo = CONCAT('(',SUBSTRING(@phno,1,3),'-',SUBSTRING(@phno,4,8),')')
end

declare @phoneNo varchar(20) = '0227868693563'
exec proc_formatPhoneNo @phoneNo out
print @phoneNo

























		
