create database learning_Functions
use learning_Functions

create function greetUser(@guestName varchar(20)) returns varchar(50)
as
begin
return 'Hello and Welcome to TSQL' + @guestName
end
select dbo.greetUser('Asmita') as Greet

create function calculate(@num1 int,@num2 int,@action varchar(5)) returns int
begin
if(@action='ADD')
begin
 return @num1+@num2
 end
 else if(@action ='SUB')
 begin
   return @num1-@num2
   end
   else if(@action='MUL')
   begin
      return @num1*@num2
	  end
  else if(@action = 'DIV')
  begin
     return @num1/@num2
  end
  return 0
  end

   select dbo.calculate(12, 12,'MUL')
      select dbo.calculate(12, 11,'DIV')


	 

select dbo.calculateNumber(20,10,'Add') as result

create function userLogin(@uName varchar(20),@Pwd varchar(50)) returns varchar(50)
as
begin 
if(@uName = 'Admin' and @Pwd = 'Admin@1234')
begin
	return 'Login Sucssesful'
end
	return 'Invalid Login'
end

select dbo.userLogin('Admi','Admin@1234') as [Log In]

create function calculateCTC(@empExperienced bit, @empCity varchar(20)) returns bigint
as
begin 
	declare @basic_salary int
	declare @HRA int
	declare @montthlyBonus int
	declare @tax int
	declare @netsalary int

	declare @CTC bigint

	if(@empExperienced = 1)
		set @basic_salary = 8000;
	else 
		set @basic_salary = 5000
	if(@empCity = 'Mumbai')
		set @HRA = 0.3 * @basic_salary
	else if(@empCity = 'Pune')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Kolkata')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Chennai')
	 set @HRA = 0.15 * @basic_salary
	else 
		set @HRA = 0;
	set @montthlyBonus = 1500
	set @tax = 0.08 * (@basic_salary + @HRA + @montthlyBonus)
	set @netSalary = @basic_salary + @HRA + @montthlyBonus -@tax
	set @CTC =@netsalary * 12

	return @CTC
end
	
select dbo.calculateCTC(1,'Mumbai') as [CTC]
end



select dbo.greetUser('Bitan') as Greet
create database Learning_function
use Learning_function

create function greetUser(@guestName varchar(20)) returns varchar(50)
as 
begin
		return 'Hello and Welcome' + @guestName
end

select dbo.greetUser('Bitan') as Greet

create function calculateNumber(@num1 int, @num2 int, @action varchar(20)) returns int
as
begin
	if(@action = 'Add')
	begin
		return @num1 + @num2
	end
	else if(@action = 'Sub')
	begin
		return @num1 - @num2
	end
	else if(@action = 'div')
	begin
		return @num1 / @num2
	end
	
		return 0
	end

select dbo.calculateNumber(20,10,'Add') as result

create function userLogin(@uName varchar(20),@Pwd varchar(50)) returns varchar(50)
as
begin 
if(@uName = 'Admin' and @Pwd = 'Admin@1234')
begin
	return 'Login Sucssesful'
end
	return 'Invalid Login'
end

select dbo.userLogin('Admi','Admin@1234') as [Log In]

create function calculateCTC(@empExperienced bit, @empCity varchar(20)) returns bigint
as
begin 
	declare @basic_salary int
	declare @HRA int
	declare @montthlyBonus int
	declare @tax int
	declare @netsalary int

	declare @CTC bigint

	if(@empExperienced = 1)
		set @basic_salary = 8000;
	else 
		set @basic_salary = 5000
	if(@empCity = 'Mumbai')
		set @HRA = 0.3 * @basic_salary
	else if(@empCity = 'Pune')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Kolkata')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Chennai')
	 set @HRA = 0.15 * @basic_salary
	else 
		set @HRA = 0;
	set @montthlyBonus = 1500
	set @tax = 0.08 * (@basic_salary + @HRA + @montthlyBonus)
	set @netSalary = @basic_salary + @HRA + @montthlyBonus -@tax
	set @CTC =@netsalary * 12

	return @CTC
end
	
select dbo.calculateCTC(1,'Mumbai') as [CTC]
end



select dbo.greetUser('Bitan') as Greet
create database Learning_function
use Learning_function

create function greetUser(@guestName varchar(20)) returns varchar(50)
as 
begin
		return 'Hello and Welcome' + @guestName
end

select dbo.greetUser('Bitan') as Greet

create function calculateNumber(@num1 int, @num2 int, @action varchar(20)) returns int
as
begin
	if(@action = 'Add')
	begin
		return @num1 + @num2
	end
	else if(@action = 'Sub')
	begin
		return @num1 - @num2
	end
	else if(@action = 'div')
	begin
		return @num1 / @num2
	end
	
		return 0
	end

select dbo.calculateNumber(20,10,'Add') as result

create function userLogin(@uName varchar(20),@Pwd varchar(50)) returns varchar(50)
as
begin 
if(@uName = 'Admin' and @Pwd = 'Admin@1234')
begin
	return 'Login Sucssesful'
end
	return 'Invalid Login'
end

select dbo.userLogin('Admi','Admin@1234') as [Log In]

create function calculateCTC(@empExperienced bit, @empCity varchar(20)) returns bigint
as
begin 
	declare @basic_salary int
	declare @HRA int
	declare @montthlyBonus int
	declare @tax int
	declare @netsalary int

	declare @CTC bigint

	if(@empExperienced = 1)
		set @basic_salary = 8000;
	else 
		set @basic_salary = 5000
	if(@empCity = 'Mumbai')
		set @HRA = 0.3 * @basic_salary
	else if(@empCity = 'Pune')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Kolkata')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Chennai')
	 set @HRA = 0.15 * @basic_salary
	else 
		set @HRA = 0;
	set @montthlyBonus = 1500
	set @tax = 0.08 * (@basic_salary + @HRA + @montthlyBonus)
	set @netSalary = @basic_salary + @HRA + @montthlyBonus -@tax
	set @CTC =@netsalary * 12

	return @CTC
end
	
select dbo.calculateCTC(1,'Mumbai') as [CTC]
end



select dbo.greetUser('Bitan') as Greet
create database Learning_function
use Learning_function

create function greetUser(@guestName varchar(20)) returns varchar(50)
as 
begin
		return 'Hello and Welcome' + @guestName
end

select dbo.greetUser('Bitan') as Greet

create function calculateNumber(@num1 int, @num2 int, @action varchar(20)) returns int
as
begin
	if(@action = 'Add')
	begin
		return @num1 + @num2
	end
	else if(@action = 'Sub')
	begin
		return @num1 - @num2
	end
	else if(@action = 'div')
	begin
		return @num1 / @num2
	end
	
		return 0
	end

select dbo.calculateNumber(20,10,'Add') as result

create function userLogin(@uName varchar(20),@Pwd varchar(50)) returns varchar(50)
as
begin 
if(@uName = 'Admin' and @Pwd = 'Admin@1234')
begin
	return 'Login Sucssesful'
end
	return 'Invalid Login'
end

select dbo.userLogin('Admi','Admin@1234') as [Log In]

create function calculateCTC(@empExperienced bit, @empCity varchar(20)) returns bigint
as
begin 
	declare @basic_salary int
	declare @HRA int
	declare @montthlyBonus int
	declare @tax int
	declare @netsalary int

	declare @CTC bigint

	if(@empExperienced = 1)
		set @basic_salary = 8000;
	else 
		set @basic_salary = 5000
	if(@empCity = 'Mumbai')
		set @HRA = 0.3 * @basic_salary
	else if(@empCity = 'Pune')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Kolkata')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Chennai')
	 set @HRA = 0.15 * @basic_salary
	else 
		set @HRA = 0;
	set @montthlyBonus = 1500
	set @tax = 0.08 * (@basic_salary + @HRA + @montthlyBonus)
	set @netSalary = @basic_salary + @HRA + @montthlyBonus -@tax
	set @CTC =@netsalary * 12

	return @CTC
end
	
select dbo.calculateCTC(1,'Mumbai') as [CTC]
end



select dbo.greetUser('Bitan') as Greet
create database Learning_function
use Learning_function

create function greetUser(@guestName varchar(20)) returns varchar(50)
as 
begin
		return 'Hello and Welcome' + @guestName
end

select dbo.greetUser('Bitan') as Greet

create function calculateNumber(@num1 int, @num2 int, @action varchar(20)) returns int
as
begin
	if(@action = 'Add')
	begin
		return @num1 + @num2
	end
	else if(@action = 'Sub')
	begin
		return @num1 - @num2
	end
	else if(@action = 'div')
	begin
		return @num1 / @num2
	end
	
		return 0
	end

select dbo.calculateNumber(20,10,'Add') as result

create function userLogin(@uName varchar(20),@Pwd varchar(50)) returns varchar(50)
as
begin 
if(@uName = 'Admin' and @Pwd = 'Admin@1234')
begin
	return 'Login Sucssesful'
end
	return 'Invalid Login'
end

select dbo.userLogin('Admi','Admin@1234') as [Log In]

create function calculateCTC(@empExperienced bit, @empCity varchar(20)) returns bigint
as
begin 
	declare @basic_salary int
	declare @HRA int
	declare @montthlyBonus int
	declare @tax int
	declare @netsalary int

	declare @CTC bigint

	if(@empExperienced = 1)
		set @basic_salary = 8000;
	else 
		set @basic_salary = 5000
	if(@empCity = 'Mumbai')
		set @HRA = 0.3 * @basic_salary
	else if(@empCity = 'Pune')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Kolkata')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Chennai')
	 set @HRA = 0.15 * @basic_salary
	else 
		set @HRA = 0;
	set @montthlyBonus = 1500
	set @tax = 0.08 * (@basic_salary + @HRA + @montthlyBonus)
	set @netSalary = @basic_salary + @HRA + @montthlyBonus -@tax
	set @CTC =@netsalary * 12

	return @CTC
end
	
select dbo.calculateCTC(1,'Mumbai') as [CTC]
end



select dbo.greetUser('Bitan') as Greet
create database Learning_function
use Learning_function

create function greetUser(@guestName varchar(20)) returns varchar(50)
as 
begin
		return 'Hello and Welcome' + @guestName
end

select dbo.greetUser('Bitan') as Greet

create function calculateNumber(@num1 int, @num2 int, @action varchar(20)) returns int
as
begin
	if(@action = 'Add')
	begin
		return @num1 + @num2
	end
	else if(@action = 'Sub')
	begin
		return @num1 - @num2
	end
	else if(@action = 'div')
	begin
		return @num1 / @num2
	end
	
		return 0
	end

select dbo.calculateNumber(20,10,'Add') as result

create function userLogin(@uName varchar(20),@Pwd varchar(50)) returns varchar(50)
as
begin 
if(@uName = 'Admin' and @Pwd = 'Admin@1234')
begin
	return 'Login Sucssesful'
end
	return 'Invalid Login'
end

select dbo.userLogin('Admi','Admin@1234') as [Log In]

create function calculateCTC(@empExperienced bit, @empCity varchar(20)) returns bigint
as
begin 
	declare @basic_salary int
	declare @HRA int
	declare @montthlyBonus int
	declare @tax int
	declare @netsalary int

	declare @CTC bigint

	if(@empExperienced = 1)
		set @basic_salary = 8000;
	else 
		set @basic_salary = 5000
	if(@empCity = 'Mumbai')
		set @HRA = 0.3 * @basic_salary
	else if(@empCity = 'Pune')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Kolkata')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Chennai')
	 set @HRA = 0.15 * @basic_salary
	else 
		set @HRA = 0;
	set @montthlyBonus = 1500
	set @tax = 0.08 * (@basic_salary + @HRA + @montthlyBonus)
	set @netSalary = @basic_salary + @HRA + @montthlyBonus -@tax
	set @CTC =@netsalary * 12

	return @CTC
end
	
select dbo.calculateCTC(1,'Mumbai') as [CTC]
end



select dbo.greetUser('Bitan') as Greet
create database Learning_function
use Learning_function

create function greetUser(@guestName varchar(20)) returns varchar(50)
as 
begin
		return 'Hello and Welcome' + @guestName
end

select dbo.greetUser('Bitan') as Greet

create function calculateNumber(@num1 int, @num2 int, @action varchar(20)) returns int
as
begin
	if(@action = 'Add')
	begin
		return @num1 + @num2
	end
	else if(@action = 'Sub')
	begin
		return @num1 - @num2
	end
	else if(@action = 'div')
	begin
		return @num1 / @num2
	end
	
		return 0
	end

select dbo.calculateNumber(20,10,'Add') as result

create function userLogin(@uName varchar(20),@Pwd varchar(50)) returns varchar(50)
as
begin 
if(@uName = 'Admin' and @Pwd = 'Admin@1234')
begin
	return 'Login Sucssesful'
end
	return 'Invalid Login'
end

select dbo.userLogin('Admi','Admin@1234') as [Log In]

create function calculateCTC(@empExperienced bit, @empCity varchar(20)) returns bigint
as
begin 
	declare @basic_salary int
	declare @HRA int
	declare @montthlyBonus int
	declare @tax int
	declare @netsalary int

	declare @CTC bigint

	if(@empExperienced = 1)
		set @basic_salary = 8000;
	else 
		set @basic_salary = 5000
	if(@empCity = 'Mumbai')
		set @HRA = 0.3 * @basic_salary
	else if(@empCity = 'Pune')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Kolkata')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Chennai')
	 set @HRA = 0.15 * @basic_salary
	else 
		set @HRA = 0;
	set @montthlyBonus = 1500
	set @tax = 0.08 * (@basic_salary + @HRA + @montthlyBonus)
	set @netSalary = @basic_salary + @HRA + @montthlyBonus -@tax
	set @CTC =@netsalary * 12

	return @CTC
end
	
select dbo.calculateCTC(1,'Mumbai') as [CTC]
end



select dbo.greetUser('Bitan') as Greet
create database Learning_function
use Learning_function

create function greetUser(@guestName varchar(20)) returns varchar(50)
as 
begin
		return 'Hello and Welcome' + @guestName
end

select dbo.greetUser('Bitan') as Greet

create function calculateNumber(@num1 int, @num2 int, @action varchar(20)) returns int
as
begin
	if(@action = 'Add')
	begin
		return @num1 + @num2
	end
	else if(@action = 'Sub')
	begin
		return @num1 - @num2
	end
	else if(@action = 'div')
	begin
		return @num1 / @num2
	end
	
		return 0
	end

select dbo.calculateNumber(20,10,'Add') as result

create function userLogin(@uName varchar(20),@Pwd varchar(50)) returns varchar(50)
as
begin 
if(@uName = 'Admin' and @Pwd = 'Admin@1234')
begin
	return 'Login Sucssesful'
end
	return 'Invalid Login'
end

select dbo.userLogin('Admi','Admin@1234') as [Log In]

create function calculateCTC(@empExperienced bit, @empCity varchar(20)) returns bigint
as
begin 
	declare @basic_salary int
	declare @HRA int
	declare @montthlyBonus int
	declare @tax int
	declare @netsalary int

	declare @CTC bigint

	if(@empExperienced = 1)
		set @basic_salary = 8000;
	else 
		set @basic_salary = 5000
	if(@empCity = 'Mumbai')
		set @HRA = 0.3 * @basic_salary
	else if(@empCity = 'Pune')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Kolkata')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Chennai')
	 set @HRA = 0.15 * @basic_salary
	else 
		set @HRA = 0;
	set @montthlyBonus = 1500
	set @tax = 0.08 * (@basic_salary + @HRA + @montthlyBonus)
	set @netSalary = @basic_salary + @HRA + @montthlyBonus -@tax
	set @CTC =@netsalary * 12

	return @CTC
end
	
select dbo.calculateCTC(1,'Mumbai') as [CTC]
end



select dbo.greetUser('Bitan') as Greet
create database Learning_function
use Learning_function

create function greetUser(@guestName varchar(20)) returns varchar(50)
as 
begin
		return 'Hello and Welcome' + @guestName
end

select dbo.greetUser('Bitan') as Greet

create function calculateNumber(@num1 int, @num2 int, @action varchar(20)) returns int
as
begin
	if(@action = 'Add')
	begin
		return @num1 + @num2
	end
	else if(@action = 'Sub')
	begin
		return @num1 - @num2
	end
	else if(@action = 'div')
	begin
		return @num1 / @num2
	end
	
		return 0
	end

select dbo.calculateNumber(20,10,'Add') as result

create function userLogin(@uName varchar(20),@Pwd varchar(50)) returns varchar(50)
as
begin 
if(@uName = 'Admin' and @Pwd = 'Admin@1234')
begin
	return 'Login Sucssesful'
end
	return 'Invalid Login'
end

select dbo.userLogin('Admi','Admin@1234') as [Log In]

create function calculateCTC(@empExperienced bit, @empCity varchar(20)) returns bigint
as
begin 
	declare @basic_salary int
	declare @HRA int
	declare @montthlyBonus int
	declare @tax int
	declare @netsalary int

	declare @CTC bigint

	if(@empExperienced = 1)
		set @basic_salary = 8000;
	else 
		set @basic_salary = 5000
	if(@empCity = 'Mumbai')
		set @HRA = 0.3 * @basic_salary
	else if(@empCity = 'Pune')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Kolkata')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Chennai')
	 set @HRA = 0.15 * @basic_salary
	else 
		set @HRA = 0;
	set @montthlyBonus = 1500
	set @tax = 0.08 * (@basic_salary + @HRA + @montthlyBonus)
	set @netSalary = @basic_salary + @HRA + @montthlyBonus -@tax
	set @CTC =@netsalary * 12

	return @CTC
end
	
select dbo.calculateCTC(1,'Mumbai') as [CTC]
end



select dbo.greetUser('Bitan') as Greet
create database Learning_function
use Learning_function

create function greetUser(@guestName varchar(20)) returns varchar(50)
as 
begin
		return 'Hello and Welcome' + @guestName
end

select dbo.greetUser('Bitan') as Greet

create function calculateNumber(@num1 int, @num2 int, @action varchar(20)) returns int
as
begin
	if(@action = 'Add')
	begin
		return @num1 + @num2
	end
	else if(@action = 'Sub')
	begin
		return @num1 - @num2
	end
	else if(@action = 'div')
	begin
		return @num1 / @num2
	end
	
		return 0
	end

select dbo.calculateNumber(20,10,'Add') as result

create function userLogin(@uName varchar(20),@Pwd varchar(50)) returns varchar(50)
as
begin 
if(@uName = 'Admin' and @Pwd = 'Admin@1234')
begin
	return 'Login Sucssesful'
end
	return 'Invalid Login'
end

select dbo.userLogin('Admi','Admin@1234') as [Log In]

create function calculateCTC(@empExperienced bit, @empCity varchar(20)) returns bigint
as
begin 
	declare @basic_salary int
	declare @HRA int
	declare @montthlyBonus int
	declare @tax int
	declare @netsalary int

	declare @CTC bigint

	if(@empExperienced = 1)
		set @basic_salary = 8000;
	else 
		set @basic_salary = 5000
	if(@empCity = 'Mumbai')
		set @HRA = 0.3 * @basic_salary
	else if(@empCity = 'Pune')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Kolkata')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Chennai')
	 set @HRA = 0.15 * @basic_salary
	else 
		set @HRA = 0;
	set @montthlyBonus = 1500
	set @tax = 0.08 * (@basic_salary + @HRA + @montthlyBonus)
	set @netSalary = @basic_salary + @HRA + @montthlyBonus -@tax
	set @CTC =@netsalary * 12

	return @CTC
end
	
select dbo.calculateCTC(1,'Mumbai') as [CTC]
end



select dbo.greetUser('Bitan') as Greet
create database Learning_function
use Learning_function

create function greetUser(@guestName varchar(20)) returns varchar(50)
as 
begin
		return 'Hello and Welcome' + @guestName
end

select dbo.greetUser('Bitan') as Greet

create function calculateNumber(@num1 int, @num2 int, @action varchar(20)) returns int
as
begin
	if(@action = 'Add')
	begin
		return @num1 + @num2
	end
	else if(@action = 'Sub')
	begin
		return @num1 - @num2
	end
	else if(@action = 'div')
	begin
		return @num1 / @num2
	end
	
		return 0
	end

select dbo.calculateNumber(20,10,'Add') as result

create function userLogin(@uName varchar(20),@Pwd varchar(50)) returns varchar(50)
as
begin 
if(@uName = 'Admin' and @Pwd = 'Admin@1234')
begin
	return 'Login Sucssesful'
end
	return 'Invalid Login'
end

select dbo.userLogin('Admi','Admin@1234') as [Log In]

create function calculateCTC(@empExperienced bit, @empCity varchar(20)) returns bigint
as
begin 
	declare @basic_salary int
	declare @HRA int
	declare @montthlyBonus int
	declare @tax int
	declare @netsalary int

	declare @CTC bigint

	if(@empExperienced = 1)
		set @basic_salary = 8000;
	else 
		set @basic_salary = 5000
	if(@empCity = 'Mumbai')
		set @HRA = 0.3 * @basic_salary
	else if(@empCity = 'Pune')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Kolkata')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Chennai')
	 set @HRA = 0.15 * @basic_salary
	else 
		set @HRA = 0;
	set @montthlyBonus = 1500
	set @tax = 0.08 * (@basic_salary + @HRA + @montthlyBonus)
	set @netSalary = @basic_salary + @HRA + @montthlyBonus -@tax
	set @CTC =@netsalary * 12

	return @CTC
end
	
select dbo.calculateCTC(1,'Mumbai') as [CTC]
end



select dbo.greetUser('Bitan') as Greet
create database Learning_function
use Learning_function

create function greetUser(@guestName varchar(20)) returns varchar(50)
as 
begin
		return 'Hello and Welcome' + @guestName
end

select dbo.greetUser('Bitan') as Greet

create function calculateNumber(@num1 int, @num2 int, @action varchar(20)) returns int
as
begin
	if(@action = 'Add')
	begin
		return @num1 + @num2
	end
	else if(@action = 'Sub')
	begin
		return @num1 - @num2
	end
	else if(@action = 'div')
	begin
		return @num1 / @num2
	end
	
		return 0
	end

select dbo.calculateNumber(20,10,'Add') as result

create function userLogin(@uName varchar(20),@Pwd varchar(50)) returns varchar(50)
as
begin 
if(@uName = 'Admin' and @Pwd = 'Admin@1234')
begin
	return 'Login Sucssesful'
end
	return 'Invalid Login'
end

select dbo.userLogin('Admi','Admin@1234') as [Log In]

create function calculateCTC(@empExperienced bit, @empCity varchar(20)) returns bigint
as
begin 
	declare @basic_salary int
	declare @HRA int
	declare @montthlyBonus int
	declare @tax int
	declare @netsalary int

	declare @CTC bigint

	if(@empExperienced = 1)
		set @basic_salary = 8000;
	else 
		set @basic_salary = 5000
	if(@empCity = 'Mumbai')
		set @HRA = 0.3 * @basic_salary
	else if(@empCity = 'Pune')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Kolkata')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Chennai')
	 set @HRA = 0.15 * @basic_salary
	else 
		set @HRA = 0;
	set @montthlyBonus = 1500
	set @tax = 0.08 * (@basic_salary + @HRA + @montthlyBonus)
	set @netSalary = @basic_salary + @HRA + @montthlyBonus -@tax
	set @CTC =@netsalary * 12

	return @CTC
end
	
select dbo.calculateCTC(1,'Mumbai') as [CTC]
end



select dbo.greetUser('Bitan') as Greet
create database Learning_function
use Learning_function

create function greetUser(@guestName varchar(20)) returns varchar(50)
as 
begin
		return 'Hello and Welcome' + @guestName
end

select dbo.greetUser('Bitan') as Greet

create function calculateNumber(@num1 int, @num2 int, @action varchar(20)) returns int
as
begin
	if(@action = 'Add')
	begin
		return @num1 + @num2
	end
	else if(@action = 'Sub')
	begin
		return @num1 - @num2
	end
	else if(@action = 'div')
	begin
		return @num1 / @num2
	end
	
		return 0
	end

select dbo.calculateNumber(20,10,'Add') as result

create function userLogin(@uName varchar(20),@Pwd varchar(50)) returns varchar(50)
as
begin 
if(@uName = 'Admin' and @Pwd = 'Admin@1234')
begin
	return 'Login Sucssesful'
end
	return 'Invalid Login'
end

select dbo.userLogin('Admi','Admin@1234') as [Log In]

create function calculateCTC(@empExperienced bit, @empCity varchar(20)) returns bigint
as
begin 
	declare @basic_salary int
	declare @HRA int
	declare @montthlyBonus int
	declare @tax int
	declare @netsalary int

	declare @CTC bigint

	if(@empExperienced = 1)
		set @basic_salary = 8000;
	else 
		set @basic_salary = 5000
	if(@empCity = 'Mumbai')
		set @HRA = 0.3 * @basic_salary
	else if(@empCity = 'Pune')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Kolkata')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Chennai')
	 set @HRA = 0.15 * @basic_salary
	else 
		set @HRA = 0;
	set @montthlyBonus = 1500
	set @tax = 0.08 * (@basic_salary + @HRA + @montthlyBonus)
	set @netSalary = @basic_salary + @HRA + @montthlyBonus -@tax
	set @CTC =@netsalary * 12

	return @CTC
end
	
select dbo.calculateCTC(1,'Mumbai') as [CTC]
end



select dbo.greetUser('Bitan') as Greet
create database Learning_function
use Learning_function

create function greetUser(@guestName varchar(20)) returns varchar(50)
as 
begin
		return 'Hello and Welcome' + @guestName
end

select dbo.greetUser('Bitan') as Greet

create function calculateNumber(@num1 int, @num2 int, @action varchar(20)) returns int
as
begin
	if(@action = 'Add')
	begin
		return @num1 + @num2
	end
	else if(@action = 'Sub')
	begin
		return @num1 - @num2
	end
	else if(@action = 'div')
	begin
		return @num1 / @num2
	end
	
		return 0
	end

select dbo.calculateNumber(20,10,'Add') as result

create function userLogin(@uName varchar(20),@Pwd varchar(50)) returns varchar(50)
as
begin 
if(@uName = 'Admin' and @Pwd = 'Admin@1234')
begin
	return 'Login Sucssesful'
end
	return 'Invalid Login'
end

select dbo.userLogin('Admi','Admin@1234') as [Log In]

create function calculateCTC(@empExperienced bit, @empCity varchar(20)) returns bigint
as
begin 
	declare @basic_salary int
	declare @HRA int
	declare @montthlyBonus int
	declare @tax int
	declare @netsalary int

	declare @CTC bigint

	if(@empExperienced = 1)
		set @basic_salary = 8000;
	else 
		set @basic_salary = 5000
	if(@empCity = 'Mumbai')
		set @HRA = 0.3 * @basic_salary
	else if(@empCity = 'Pune')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Kolkata')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Chennai')
	 set @HRA = 0.15 * @basic_salary
	else 
		set @HRA = 0;
	set @montthlyBonus = 1500
	set @tax = 0.08 * (@basic_salary + @HRA + @montthlyBonus)
	set @netSalary = @basic_salary + @HRA + @montthlyBonus -@tax
	set @CTC =@netsalary * 12

	return @CTC
end
	
select dbo.calculateCTC(1,'Mumbai') as [CTC]
end



select dbo.greetUser('Bitan') as Greet
create database Learning_function
use Learning_function

create function greetUser(@guestName varchar(20)) returns varchar(50)
as 
begin
		return 'Hello and Welcome' + @guestName
end

select dbo.greetUser('Bitan') as Greet

create function calculateNumber(@num1 int, @num2 int, @action varchar(20)) returns int
as
begin
	if(@action = 'Add')
	begin
		return @num1 + @num2
	end
	else if(@action = 'Sub')
	begin
		return @num1 - @num2
	end
	else if(@action = 'div')
	begin
		return @num1 / @num2
	end
	
		return 0
	end

select dbo.calculateNumber(20,10,'Add') as result

create function userLogin(@uName varchar(20),@Pwd varchar(50)) returns varchar(50)
as
begin 
if(@uName = 'Admin' and @Pwd = 'Admin@1234')
begin
	return 'Login Sucssesful'
end
	return 'Invalid Login'
end

select dbo.userLogin('Admi','Admin@1234') as [Log In]

create function calculateCTC(@empExperienced bit, @empCity varchar(20)) returns bigint
as
begin 
	declare @basic_salary int
	declare @HRA int
	declare @montthlyBonus int
	declare @tax int
	declare @netsalary int

	declare @CTC bigint

	if(@empExperienced = 1)
		set @basic_salary = 8000;
	else 
		set @basic_salary = 5000
	if(@empCity = 'Mumbai')
		set @HRA = 0.3 * @basic_salary
	else if(@empCity = 'Pune')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Kolkata')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Chennai')
	 set @HRA = 0.15 * @basic_salary
	else 
		set @HRA = 0;
	set @montthlyBonus = 1500
	set @tax = 0.08 * (@basic_salary + @HRA + @montthlyBonus)
	set @netSalary = @basic_salary + @HRA + @montthlyBonus -@tax
	set @CTC =@netsalary * 12

	return @CTC
end
	
select dbo.calculateCTC(1,'Mumbai') as [CTC]
end



select dbo.greetUser('Bitan') as Greet
create database Learning_function
use Learning_function

create function greetUser(@guestName varchar(20)) returns varchar(50)
as 
begin
		return 'Hello and Welcome' + @guestName
end

select dbo.greetUser('Bitan') as Greet

create function calculateNumber(@num1 int, @num2 int, @action varchar(20)) returns int
as
begin
	if(@action = 'Add')
	begin
		return @num1 + @num2
	end
	else if(@action = 'Sub')
	begin
		return @num1 - @num2
	end
	else if(@action = 'div')
	begin
		return @num1 / @num2
	end
	
		return 0
	end

select dbo.calculateNumber(20,10,'Add') as result

create function userLogin(@uName varchar(20),@Pwd varchar(50)) returns varchar(50)
as
begin 
if(@uName = 'Admin' and @Pwd = 'Admin@1234')
begin
	return 'Login Sucssesful'
end
	return 'Invalid Login'
end

select dbo.userLogin('Admi','Admin@1234') as [Log In]

create function calculateCTC(@empExperienced bit, @empCity varchar(20)) returns bigint
as
begin 
	declare @basic_salary int
	declare @HRA int
	declare @montthlyBonus int
	declare @tax int
	declare @netsalary int

	declare @CTC bigint

	if(@empExperienced = 1)
		set @basic_salary = 8000;
	else 
		set @basic_salary = 5000
	if(@empCity = 'Mumbai')
		set @HRA = 0.3 * @basic_salary
	else if(@empCity = 'Pune')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Kolkata')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Chennai')
	 set @HRA = 0.15 * @basic_salary
	else 
		set @HRA = 0;
	set @montthlyBonus = 1500
	set @tax = 0.08 * (@basic_salary + @HRA + @montthlyBonus)
	set @netSalary = @basic_salary + @HRA + @montthlyBonus -@tax
	set @CTC =@netsalary * 12

	return @CTC
end
	
select dbo.calculateCTC(1,'Mumbai') as [CTC]
end



select dbo.greetUser('Bitan') as Greet
create database Learning_function
use Learning_function

create function greetUser(@guestName varchar(20)) returns varchar(50)
as 
begin
		return 'Hello and Welcome' + @guestName
end

select dbo.greetUser('Bitan') as Greet

create function calculateNumber(@num1 int, @num2 int, @action varchar(20)) returns int
as
begin
	if(@action = 'Add')
	begin
		return @num1 + @num2
	end
	else if(@action = 'Sub')
	begin
		return @num1 - @num2
	end
	else if(@action = 'div')
	begin
		return @num1 / @num2
	end
	
		return 0
	end

select dbo.calculateNumber(20,10,'Add') as result

create function userLogin(@uName varchar(20),@Pwd varchar(50)) returns varchar(50)
as
begin 
if(@uName = 'Admin' and @Pwd = 'Admin@1234')
begin
	return 'Login Sucssesful'
end
	return 'Invalid Login'
end

select dbo.userLogin('Admi','Admin@1234') as [Log In]

create function calculateCTC(@empExperienced bit, @empCity varchar(20)) returns bigint
as
begin 
	declare @basic_salary int
	declare @HRA int
	declare @montthlyBonus int
	declare @tax int
	declare @netsalary int

	declare @CTC bigint

	if(@empExperienced = 1)
		set @basic_salary = 8000;
	else 
		set @basic_salary = 5000
	if(@empCity = 'Mumbai')
		set @HRA = 0.3 * @basic_salary
	else if(@empCity = 'Pune')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Kolkata')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Chennai')
	 set @HRA = 0.15 * @basic_salary
	else 
		set @HRA = 0;
	set @montthlyBonus = 1500
	set @tax = 0.08 * (@basic_salary + @HRA + @montthlyBonus)
	set @netSalary = @basic_salary + @HRA + @montthlyBonus -@tax
	set @CTC =@netsalary * 12

	return @CTC
end
	
select dbo.calculateCTC(1,'Mumbai') as [CTC]
end



select dbo.greetUser('Bitan') as Greet
create database Learning_function
use Learning_function

create function greetUser(@guestName varchar(20)) returns varchar(50)
as 
begin
		return 'Hello and Welcome' + @guestName
end

select dbo.greetUser('Bitan') as Greet

create function calculateNumber(@num1 int, @num2 int, @action varchar(20)) returns int
as
begin
	if(@action = 'Add')
	begin
		return @num1 + @num2
	end
	else if(@action = 'Sub')
	begin
		return @num1 - @num2
	end
	else if(@action = 'div')
	begin
		return @num1 / @num2
	end
	
		return 0
	end

select dbo.calculateNumber(20,10,'Add') as result

create function userLogin(@uName varchar(20),@Pwd varchar(50)) returns varchar(50)
as
begin 
if(@uName = 'Admin' and @Pwd = 'Admin@1234')
begin
	return 'Login Sucssesful'
end
	return 'Invalid Login'
end

select dbo.userLogin('Admi','Admin@1234') as [Log In]

create function calculateCTC(@empExperienced bit, @empCity varchar(20)) returns bigint
as
begin 
	declare @basic_salary int
	declare @HRA int
	declare @montthlyBonus int
	declare @tax int
	declare @netsalary int

	declare @CTC bigint

	if(@empExperienced = 1)
		set @basic_salary = 8000;
	else 
		set @basic_salary = 5000
	if(@empCity = 'Mumbai')
		set @HRA = 0.3 * @basic_salary
	else if(@empCity = 'Pune')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Kolkata')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Chennai')
	 set @HRA = 0.15 * @basic_salary
	else 
		set @HRA = 0;
	set @montthlyBonus = 1500
	set @tax = 0.08 * (@basic_salary + @HRA + @montthlyBonus)
	set @netSalary = @basic_salary + @HRA + @montthlyBonus -@tax
	set @CTC =@netsalary * 12

	return @CTC
end
	
select dbo.calculateCTC(1,'Mumbai') as [CTC]
end



select dbo.greetUser('Bitan') as Greet
create database Learning_function
use Learning_function

create function greetUser(@guestName varchar(20)) returns varchar(50)
as 
begin
		return 'Hello and Welcome' + @guestName
end

select dbo.greetUser('Bitan') as Greet

create function calculateNumber(@num1 int, @num2 int, @action varchar(20)) returns int
as
begin
	if(@action = 'Add')
	begin
		return @num1 + @num2
	end
	else if(@action = 'Sub')
	begin
		return @num1 - @num2
	end
	else if(@action = 'div')
	begin
		return @num1 / @num2
	end
	
		return 0
	end

select dbo.calculateNumber(20,10,'Add') as result

create function userLogin(@uName varchar(20),@Pwd varchar(50)) returns varchar(50)
as
begin 
if(@uName = 'Admin' and @Pwd = 'Admin@1234')
begin
	return 'Login Sucssesful'
end
	return 'Invalid Login'
end

select dbo.userLogin('Admi','Admin@1234') as [Log In]

create function calculateCTC(@empExperienced bit, @empCity varchar(20)) returns bigint
as
begin 
	declare @basic_salary int
	declare @HRA int
	declare @montthlyBonus int
	declare @tax int
	declare @netsalary int

	declare @CTC bigint

	if(@empExperienced = 1)
		set @basic_salary = 8000;
	else 
		set @basic_salary = 5000
	if(@empCity = 'Mumbai')
		set @HRA = 0.3 * @basic_salary
	else if(@empCity = 'Pune')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Kolkata')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Chennai')
	 set @HRA = 0.15 * @basic_salary
	else 
		set @HRA = 0;
	set @montthlyBonus = 1500
	set @tax = 0.08 * (@basic_salary + @HRA + @montthlyBonus)
	set @netSalary = @basic_salary + @HRA + @montthlyBonus -@tax
	set @CTC =@netsalary * 12

	return @CTC
end
	
select dbo.calculateCTC(1,'Mumbai') as [CTC]
end



select dbo.greetUser('Bitan') as Greet
create database Learning_function
use Learning_function

create function greetUser(@guestName varchar(20)) returns varchar(50)
as 
begin
		return 'Hello and Welcome' + @guestName
end

select dbo.greetUser('Bitan') as Greet

create function calculateNumber(@num1 int, @num2 int, @action varchar(20)) returns int
as
begin
	if(@action = 'Add')
	begin
		return @num1 + @num2
	end
	else if(@action = 'Sub')
	begin
		return @num1 - @num2
	end
	else if(@action = 'div')
	begin
		return @num1 / @num2
	end
	
		return 0
	end

select dbo.calculateNumber(20,10,'Add') as result

create function userLogin(@uName varchar(20),@Pwd varchar(50)) returns varchar(50)
as
begin 
if(@uName = 'Admin' and @Pwd = 'Admin@1234')
begin
	return 'Login Sucssesful'
end
	return 'Invalid Login'
end

select dbo.userLogin('Admi','Admin@1234') as [Log In]

create function calculateCTC(@empExperienced bit, @empCity varchar(20)) returns bigint
as
begin 
	declare @basic_salary int
	declare @HRA int
	declare @montthlyBonus int
	declare @tax int
	declare @netsalary int

	declare @CTC bigint

	if(@empExperienced = 1)
		set @basic_salary = 8000;
	else 
		set @basic_salary = 5000
	if(@empCity = 'Mumbai')
		set @HRA = 0.3 * @basic_salary
	else if(@empCity = 'Pune')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Kolkata')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Chennai')
	 set @HRA = 0.15 * @basic_salary
	else 
		set @HRA = 0;
	set @montthlyBonus = 1500
	set @tax = 0.08 * (@basic_salary + @HRA + @montthlyBonus)
	set @netSalary = @basic_salary + @HRA + @montthlyBonus -@tax
	set @CTC =@netsalary * 12

	return @CTC
end
	
select dbo.calculateCTC(1,'Mumbai') as [CTC]
end



select dbo.greetUser('Bitan') as Greet
create database Learning_function
use Learning_function

create function greetUser(@guestName varchar(20)) returns varchar(50)
as 
begin
		return 'Hello and Welcome' + @guestName
end

select dbo.greetUser('Bitan') as Greet

create function calculateNumber(@num1 int, @num2 int, @action varchar(20)) returns int
as
begin
	if(@action = 'Add')
	begin
		return @num1 + @num2
	end
	else if(@action = 'Sub')
	begin
		return @num1 - @num2
	end
	else if(@action = 'div')
	begin
		return @num1 / @num2
	end
	
		return 0
	end

select dbo.calculateNumber(20,10,'Add') as result

create function userLogin(@uName varchar(20),@Pwd varchar(50)) returns varchar(50)
as
begin 
if(@uName = 'Admin' and @Pwd = 'Admin@1234')
begin
	return 'Login Sucssesful'
end
	return 'Invalid Login'
end

select dbo.userLogin('Admi','Admin@1234') as [Log In]

create function calculateCTC(@empExperienced bit, @empCity varchar(20)) returns bigint
as
begin 
	declare @basic_salary int
	declare @HRA int
	declare @montthlyBonus int
	declare @tax int
	declare @netsalary int

	declare @CTC bigint

	if(@empExperienced = 1)
		set @basic_salary = 8000;
	else 
		set @basic_salary = 5000
	if(@empCity = 'Mumbai')
		set @HRA = 0.3 * @basic_salary
	else if(@empCity = 'Pune')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Kolkata')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Chennai')
	 set @HRA = 0.15 * @basic_salary
	else 
		set @HRA = 0;
	set @montthlyBonus = 1500
	set @tax = 0.08 * (@basic_salary + @HRA + @montthlyBonus)
	set @netSalary = @basic_salary + @HRA + @montthlyBonus -@tax
	set @CTC =@netsalary * 12

	return @CTC
end
	
select dbo.calculateCTC(1,'Mumbai') as [CTC]
end



select dbo.greetUser('Bitan') as Greet
create database Learning_function
use Learning_function

create function greetUser(@guestName varchar(20)) returns varchar(50)
as 
begin
		return 'Hello and Welcome' + @guestName
end

select dbo.greetUser('Bitan') as Greet

create function calculateNumber(@num1 int, @num2 int, @action varchar(20)) returns int
as
begin
	if(@action = 'Add')
	begin
		return @num1 + @num2
	end
	else if(@action = 'Sub')
	begin
		return @num1 - @num2
	end
	else if(@action = 'div')
	begin
		return @num1 / @num2
	end
	
		return 0
	end

select dbo.calculateNumber(20,10,'Add') as result

create function userLogin(@uName varchar(20),@Pwd varchar(50)) returns varchar(50)
as
begin 
if(@uName = 'Admin' and @Pwd = 'Admin@1234')
begin
	return 'Login Sucssesful'
end
	return 'Invalid Login'
end

select dbo.userLogin('Admi','Admin@1234') as [Log In]

create function calculateCTC(@empExperienced bit, @empCity varchar(20)) returns bigint
as
begin 
	declare @basic_salary int
	declare @HRA int
	declare @montthlyBonus int
	declare @tax int
	declare @netsalary int

	declare @CTC bigint

	if(@empExperienced = 1)
		set @basic_salary = 8000;
	else 
		set @basic_salary = 5000
	if(@empCity = 'Mumbai')
		set @HRA = 0.3 * @basic_salary
	else if(@empCity = 'Pune')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Kolkata')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Chennai')
	 set @HRA = 0.15 * @basic_salary
	else 
		set @HRA = 0;
	set @montthlyBonus = 1500
	set @tax = 0.08 * (@basic_salary + @HRA + @montthlyBonus)
	set @netSalary = @basic_salary + @HRA + @montthlyBonus -@tax
	set @CTC =@netsalary * 12

	return @CTC
end
	
select dbo.calculateCTC(1,'Mumbai') as [CTC]
end



select dbo.greetUser('Bitan') as Greet
create database Learning_function
use Learning_function

create function greetUser(@guestName varchar(20)) returns varchar(50)
as 
begin
		return 'Hello and Welcome' + @guestName
end

select dbo.greetUser('Bitan') as Greet

create function calculateNumber(@num1 int, @num2 int, @action varchar(20)) returns int
as
begin
	if(@action = 'Add')
	begin
		return @num1 + @num2
	end
	else if(@action = 'Sub')
	begin
		return @num1 - @num2
	end
	else if(@action = 'div')
	begin
		return @num1 / @num2
	end
	
		return 0
	end

select dbo.calculateNumber(20,10,'Add') as result

create function userLogin(@uName varchar(20),@Pwd varchar(50)) returns varchar(50)
as
begin 
if(@uName = 'Admin' and @Pwd = 'Admin@1234')
begin
	return 'Login Sucssesful'
end
	return 'Invalid Login'
end

select dbo.userLogin('Admi','Admin@1234') as [Log In]

create function calculateCTC(@empExperienced bit, @empCity varchar(20)) returns bigint
as
begin 
	declare @basic_salary int
	declare @HRA int
	declare @montthlyBonus int
	declare @tax int
	declare @netsalary int

	declare @CTC bigint

	if(@empExperienced = 1)
		set @basic_salary = 8000;
	else 
		set @basic_salary = 5000
	if(@empCity = 'Mumbai')
		set @HRA = 0.3 * @basic_salary
	else if(@empCity = 'Pune')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Kolkata')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Chennai')
	 set @HRA = 0.15 * @basic_salary
	else 
		set @HRA = 0;
	set @montthlyBonus = 1500
	set @tax = 0.08 * (@basic_salary + @HRA + @montthlyBonus)
	set @netSalary = @basic_salary + @HRA + @montthlyBonus -@tax
	set @CTC =@netsalary * 12

	return @CTC
end
	
select dbo.calculateCTC(1,'Mumbai') as [CTC]
end



select dbo.greetUser('Bitan') as Greet
create database Learning_function
use Learning_function

create function greetUser(@guestName varchar(20)) returns varchar(50)
as 
begin
		return 'Hello and Welcome' + @guestName
end

select dbo.greetUser('Bitan') as Greet

create function calculateNumber(@num1 int, @num2 int, @action varchar(20)) returns int
as
begin
	if(@action = 'Add')
	begin
		return @num1 + @num2
	end
	else if(@action = 'Sub')
	begin
		return @num1 - @num2
	end
	else if(@action = 'div')
	begin
		return @num1 / @num2
	end
	
		return 0
	end

select dbo.calculateNumber(20,10,'Add') as result

create function userLogin(@uName varchar(20),@Pwd varchar(50)) returns varchar(50)
as
begin 
if(@uName = 'Admin' and @Pwd = 'Admin@1234')
begin
	return 'Login Sucssesful'
end
	return 'Invalid Login'
end

select dbo.userLogin('Admi','Admin@1234') as [Log In]

create function calculateCTC(@empExperienced bit, @empCity varchar(20)) returns bigint
as
begin 
	declare @basic_salary int
	declare @HRA int
	declare @montthlyBonus int
	declare @tax int
	declare @netsalary int

	declare @CTC bigint

	if(@empExperienced = 1)
		set @basic_salary = 8000;
	else 
		set @basic_salary = 5000
	if(@empCity = 'Mumbai')
		set @HRA = 0.3 * @basic_salary
	else if(@empCity = 'Pune')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Kolkata')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Chennai')
	 set @HRA = 0.15 * @basic_salary
	else 
		set @HRA = 0;
	set @montthlyBonus = 1500
	set @tax = 0.08 * (@basic_salary + @HRA + @montthlyBonus)
	set @netSalary = @basic_salary + @HRA + @montthlyBonus -@tax
	set @CTC =@netsalary * 12

	return @CTC
end
	
select dbo.calculateCTC(1,'Mumbai') as [CTC]
end



select dbo.greetUser('Bitan') as Greet
create database Learning_function
use Learning_function

create function greetUser(@guestName varchar(20)) returns varchar(50)
as 
begin
		return 'Hello and Welcome' + @guestName
end

select dbo.greetUser('Bitan') as Greet

create function calculateNumber(@num1 int, @num2 int, @action varchar(20)) returns int
as
begin
	if(@action = 'Add')
	begin
		return @num1 + @num2
	end
	else if(@action = 'Sub')
	begin
		return @num1 - @num2
	end
	else if(@action = 'div')
	begin
		return @num1 / @num2
	end
	
		return 0
	end

select dbo.calculateNumber(20,10,'Add') as result

create function userLogin(@uName varchar(20),@Pwd varchar(50)) returns varchar(50)
as
begin 
if(@uName = 'Admin' and @Pwd = 'Admin@1234')
begin
	return 'Login Sucssesful'
end
	return 'Invalid Login'
end

select dbo.userLogin('Admi','Admin@1234') as [Log In]

create function calculateCTC(@empExperienced bit, @empCity varchar(20)) returns bigint
as
begin 
	declare @basic_salary int
	declare @HRA int
	declare @montthlyBonus int
	declare @tax int
	declare @netsalary int

	declare @CTC bigint

	if(@empExperienced = 1)
		set @basic_salary = 8000;
	else 
		set @basic_salary = 5000
	if(@empCity = 'Mumbai')
		set @HRA = 0.3 * @basic_salary
	else if(@empCity = 'Pune')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Kolkata')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Chennai')
	 set @HRA = 0.15 * @basic_salary
	else 
		set @HRA = 0;
	set @montthlyBonus = 1500
	set @tax = 0.08 * (@basic_salary + @HRA + @montthlyBonus)
	set @netSalary = @basic_salary + @HRA + @montthlyBonus -@tax
	set @CTC =@netsalary * 12

	return @CTC
end
	
select dbo.calculateCTC(1,'Mumbai') as [CTC]
end



select dbo.greetUser('Bitan') as Greet
create database Learning_function
use Learning_function

create function greetUser(@guestName varchar(20)) returns varchar(50)
as 
begin
		return 'Hello and Welcome' + @guestName
end

select dbo.greetUser('Bitan') as Greet

create function calculateNumber(@num1 int, @num2 int, @action varchar(20)) returns int
as
begin
	if(@action = 'Add')
	begin
		return @num1 + @num2
	end
	else if(@action = 'Sub')
	begin
		return @num1 - @num2
	end
	else if(@action = 'div')
	begin
		return @num1 / @num2
	end
	
		return 0
	end

select dbo.calculateNumber(20,10,'Add') as result

create function userLogin(@uName varchar(20),@Pwd varchar(50)) returns varchar(50)
as
begin 
if(@uName = 'Admin' and @Pwd = 'Admin@1234')
begin
	return 'Login Sucssesful'
end
	return 'Invalid Login'
end

select dbo.userLogin('Admi','Admin@1234') as [Log In]

create function calculateCTC(@empExperienced bit, @empCity varchar(20)) returns bigint
as
begin 
	declare @basic_salary int
	declare @HRA int
	declare @montthlyBonus int
	declare @tax int
	declare @netsalary int

	declare @CTC bigint

	if(@empExperienced = 1)
		set @basic_salary = 8000;
	else 
		set @basic_salary = 5000
	if(@empCity = 'Mumbai')
		set @HRA = 0.3 * @basic_salary
	else if(@empCity = 'Pune')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Kolkata')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Chennai')
	 set @HRA = 0.15 * @basic_salary
	else 
		set @HRA = 0;
	set @montthlyBonus = 1500
	set @tax = 0.08 * (@basic_salary + @HRA + @montthlyBonus)
	set @netSalary = @basic_salary + @HRA + @montthlyBonus -@tax
	set @CTC =@netsalary * 12

	return @CTC
end
	
select dbo.calculateCTC(1,'Mumbai') as [CTC]
end



select dbo.greetUser('Bitan') as Greet
create database Learning_function
use Learning_function

create function greetUser(@guestName varchar(20)) returns varchar(50)
as 
begin
		return 'Hello and Welcome' + @guestName
end

select dbo.greetUser('Bitan') as Greet

create function calculateNumber(@num1 int, @num2 int, @action varchar(20)) returns int
as
begin
	if(@action = 'Add')
	begin
		return @num1 + @num2
	end
	else if(@action = 'Sub')
	begin
		return @num1 - @num2
	end
	else if(@action = 'div')
	begin
		return @num1 / @num2
	end
	
		return 0
	end

select dbo.calculateNumber(20,10,'Add') as result

create function userLogin(@uName varchar(20),@Pwd varchar(50)) returns varchar(50)
as
begin 
if(@uName = 'Admin' and @Pwd = 'Admin@1234')
begin
	return 'Login Sucssesful'
end
	return 'Invalid Login'
end

select dbo.userLogin('Admi','Admin@1234') as [Log In]

create function calculateCTC(@empExperienced bit, @empCity varchar(20)) returns bigint
as
begin 
	declare @basic_salary int
	declare @HRA int
	declare @montthlyBonus int
	declare @tax int
	declare @netsalary int

	declare @CTC bigint

	if(@empExperienced = 1)
		set @basic_salary = 8000;
	else 
		set @basic_salary = 5000
	if(@empCity = 'Mumbai')
		set @HRA = 0.3 * @basic_salary
	else if(@empCity = 'Pune')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Kolkata')
	 set @HRA = 0.2 * @basic_salary
	else if(@empCity = 'Chennai')
	 set @HRA = 0.15 * @basic_salary
	else 
		set @HRA = 0;
	set @montthlyBonus = 1500
	set @tax = 0.08 * (@basic_salary + @HRA + @montthlyBonus)
	set @netSalary = @basic_salary + @HRA + @montthlyBonus -@tax
	set @CTC =@netsalary * 12

	return @CTC
end
	
select dbo.calculateCTC(1,'Mumbai') as [CTC]
end



select dbo.greetUser('Bitan') as Greet






alter function greetUser2() returns varchar(30)
as
begin
return 'Hello and Welcome to SQL' 
end
select dbo.greetUser2()




select empNo, dpo.greetUser(empName) as Great from empInfo
create function calculateNumbers(@num1 int, @num2 int, @action varchar(5)) returns int
as
begin
   return @num1 +@num2
   end



