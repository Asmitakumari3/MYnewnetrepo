
create database Learning_proc_3
use Learning_proc_3

create table AccountsInfo
(
	accNo int primary key not null,
	accName varchar(20),
	accType varchar(20),
	accBalance bigint
)

insert into AccountsInfo(accNo,accName,accType,accBalance)
values(1,'Asmita','Savings',2000),
(2,'Nikhil','Current',3000),
(3,'Abhinay','PF',4000),
(4,'Rk pragyajit','Savings',3000),
(5,'Subhasis','Current',5000),
(6,'Sourya','PF',3000),
(7,'Prantap','Savings',2000),
(8,'Saikat','Current',1000),
(9,'Soumen','PF',6000),
(10,'Komal','Savings',2000)

select * from AccountsInfo

CREATE procedure proc_transact(@accNo int, @amt int,@action varchar(20),@billPaycustId bigint=0,@transferAccNo int =0)
as
begin
	if(@action ='Withdraw')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
	if(@action ='Deposit')
		begin
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @accNo
		end
	if(@action ='CheckBalance')
		begin
			select accBalance from AccountsInfo where accNo = @accNo
		end
	if(@action ='Transfer')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
			update AccountsInfo set accBalance = accBalance + @amt where accNo = @transferAccNo
		end
	if(@action ='BillPay')
		begin
			update AccountsInfo set accBalance = accBalance - @amt where accNo = @accNo
		end
end

Select * from AccountsInfo

exec proc_transact 1,5000,'Deposit'


create table employeeInfo
(
	empNo int primary key not null,
	empName varchar(20),
	empDesignation varchar(20),
	empsalary bigint,
	empIsPermenant bit
)

create procedure proc_HR(@empNo int,@empName varchar(20), @action varchar(20), @empDesignation varchar(20),@empSalary bigint = 0,@empIspermenant bit = 1)
as 
begin
	if(@action = 'Add')
	begin
		insert into employeeInfo(empNo,empName,empDesignation,empSalary,empIsPermenant)
		values(@empNo,@empName,@empDesignation,@empSalary,@empIspermenant)
	end
	else if(@action = 'Update')
	begin
		update employeeInfo set empDesignation = @empDesignation , empIsPermenant = @empIspermenant where empNo = @empNo
	end
	else if(@action = 'Delete')
	begin 
		delete employeeInfo where empNo =@empNo
	end
	else if(@action = 'Promote')
	begin
		update employeeInfo set empDesignation = @empDesignation where empNo = @empNo
	end
end








