
create function calculateCTC(@empExperienced bit, @empCity varchar(20)) returns bigint
as
begin 
	declare @basic_salary int
	declare @HRA int
	declare @montthlyBonus int
	declare @tax int
	declare @netSalary int
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
	 set @HRA = 0.2 * @basic_salarys
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