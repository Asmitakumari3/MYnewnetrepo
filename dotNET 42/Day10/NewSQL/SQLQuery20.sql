create database learning_procedures
use learning_procedures
Create table deptInfo
(
deptNo int primary key,
deptName varchar(20),
deptCity varchar(20)
)

create procedure proc_newDept(@dNo int, @Name varchar(20),@dCity varchar(20))
as
begin
    insert into deptInfo values(@dNo,@Name,@dCity)
end
exec proc_newDept 10,'HR','Pune'

delete from deptInfo where deptNo =20

create procedure proc_DeleteDept(@dNo int)
as
begin
    delete from deptInfo where deptNo = @dNo
end

exec proc_DeleteDept 20

create procedure proc_updateDept(@dNo int, @newDeptName varchar(20))
as
begin
   update deptInfo set deptName =@newDeptName where deptNo = @dNo
end
select* from deptInfo
exec proc_updateDept 10,'People Management'



create table empInfo
(
  empNo int primary key,
  empName varchar(20),
  empDesignation varchar(20),
  empSalary int,
  empIsPermanent bit,
  empDeptNo int
  constraint fk_empDeptNo foreign key(empDeptNo) references deptInfo
  )
  select max(empNo) from empInfo
    select max(empNo) from empInfo
  

  

select ISNULL(max(empNo),100) from empInfo

create table empContactinfo
(
	empNo int primary key,
	empEmailAddress varchar(80),
	empMobileNo bigint,
	empPAN varchar(10),
	constraint fk_empNo foreign key(empNo) references empInfo
)

create procedure proc_newEmp(@empName varchar(20),
							@empDesignation varchar(20),
							@empIsPermenant bit,
							@empMobileNo bigint,
							@empPan varchar(20))
						as
						begin

			declare @newEmpNo int
						set @newEmpNo = (select isnull(max(empNo),100) + 1  from empInfo)

			declare @newSalary int
			declare @newEmpDeptNo int;
			declare @newEmailAddress varchar(80)
				set @newEmailAddress =(select CONCAT(@empName,'.',SUBSTRING(@empDesignation,1,2),'@myorg.co.in'))
						
						if(@empDesignation = 'HR')
						begin
							set @newSalary = 10000
							set @newEmpDeptNo = 10
						end
						else if (@empDesignation = 'Developer')
						begin
							set @newSalary = 15000
							set @newEmpDeptNo = 20
						end
						else if(@empDesignation = 'Sales')
						begin
							set @newSalary = 20000
							set @newEmpDeptNo = 30
						end
						end

			insert into empinfo values(@newEmpNo,upper(@empName),@empDesignation,@newSalary,@empIsPermenant,@newEmpDeptNo)
			insert into empContactInfo values(@newEmpNo,@newEmailAddress,@empMobileNo,upper(@empPan))
					

						end




						exec proc_newEmp 'Indranil','Sales',1,787889,'TTYYUHJHk'









						select * from empInfo
						select * from empContactInfo


CREATE TABLE LoginInfo (
   userName VARCHAR(20) PRIMARY KEY,
   password VARCHAR(155),
   accStatus VARCHAR(20),
   attempts INT
   );

   	
	

	create procedure proc_NewLogin(@userName varchar(20),@pwd varchar(20))
	as
	begin
		declare @countUName int;
		set @countUName = (select count(userName)  from loginInfo where userName = @userName) -- this will return int
		if (@countUName = 1)
		begin
			--throw new exception 
			print concat('Username ',@username,' already exist please choose a different name');
		end
		else
		begin
		insert into logininfo values(@userName,@pwd,'New',0)
		end
	end

	exec proc_NewLogin 'Abhinay Sarad','Pass@7878'
	select * from logininfo
	insert into logininfo values('Nikhil','4535@Pass','New',0)

	select count(userName) from loginInfo where userName = 'Husain'



	select count(*) from loginInfo where username = 'Nikhil' and password = '@password'

	alter procedure proc_login(@userName varchar(20),@password varchar(20))
	as
	begin
		
		declare @attempts int;
		declare @isUserPresent int;
		declare @accStatus varchar(20)

		set @isUserPresent = (select count(*) from loginInfo where username = @userName and password = @password)
		if(@isUserPresent = 1)
		begin
			--we will test accStatus and attempts
			set @accStatus = (select accStatus from loginInfo where username = @userName and password = @password)
			set @attempts = (select attempts from loginInfo where username = @userName)

			if(@accStatus = 'New')
			begin
				print 'Login Successful, please change the password to proceed further'
			end
			else if (@attempts >= 3)
			begin
				print 'Account is Locked, please contact Admin'
			end
			else
			begin
				print 'Welcome to Banking, ' + @userName
			end
		end
		else
		begin
			print 'Invalid Credentials'
			update loginInfo set attempts = attempts + 1 where username = @userName
			print @attempts
			if(@attempts > 2)
			begin
				print 'Account Locked please contact Admin'
			end
		end
	end

		exec  proc_login 'Nikhil','pwd1234'


		select * from logininfo

		select * from logininfo




		select attempts from loginInfo where username = 'Nikhil' and password = 'pwd234'
































		


