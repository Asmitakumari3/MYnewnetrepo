
	create table loginInfo1
	(
		userName varchar(20) primary key,
		password varchar(20),
		acStatus varchar(20),
		attempts int
	)

	create procedure proc_NewLogin(@userName varchar(20),@pwd varchar(20))
	as
	begin
		declare @countUName int;
		set @countUName = (select count(userName)  from loginInfo1 where userName = @userName) -- this will return int
		if (@countUName = 1)
		begin
			--throw new exception 
			print concat('Username ',@username,' already exist please choose a different name');
		end
		else
		begin
		insert into logininfo1 values(@userName,@pwd,'New',0)
		end
	end

	exec proc_NewLogin 'Abhinay','Pass@7878'
	select * from logininfo1
	insert into logininfo1 values('Nikhil','4535@Pass','New',0)

	select count(userName) from loginInfo1 where userName = 'Husain'



	select count(*) from loginInfo1 where username = 'Nikhil' and password = '@password'

	alter procedure proc_login(@userName varchar(20),@password varchar(20))
	as
	begin
		
		declare @attempts int;
		declare @isUserPresent int;
		declare @accStatus varchar(20)

		set @isUserPresent = (select count(*) from loginInfo1 where username = @userName and password = @password)
		if(@isUserPresent = 1)
		begin
			--we will test accStatus and attempts
			set @accStatus = (select acStatus from loginInfo1 where username = @userName and password = @password)
			set @attempts = (select attempts from loginInfo1 where username = @userName)

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


		select * from logininfo1

		select * from logininfo1




		select attempts from loginInfo where username = 'Nikhil' and password = 'pwd234'


















