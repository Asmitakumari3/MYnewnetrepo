create database LearningOB_function
use LearningOB_function

create function greetUser(@guestName varchar(20)) returns varchar(50)
as 
begin
		return 'Hello and Welcome' + @guestName
end

select dbo.greetUser('Asmita K') as Greet

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

create function calculate1CTC(@empExperienced bit, @empCity varchar(20)) returns bigint
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
	
select dbo.calculate1CTC(1,'Mumbai') as [CTC]
end



select dbo.greetUser('Asmita k') as Greet
