create database InsuranceDB2_SP;

use InsuranceDB2_SP;

create table tabl_policyDetails (
	policyNo int primary key,
	policyName varchar(30),
	policyPremium float
);

insert into tabl_policyDetails values(10, 'Life Insurance', 20000.56);
insert into tabl_policyDetails values(20, 'Car Insurance', 32105.09);
insert into tabl_policyDetails values(30, 'Health Insurance', 13001.78);
insert into tabl_policyDetails values(40, 'Term Insurance', 8792.45);
insert into tabl_policyDetails values(50, 'Home Insurance', 9900.50);

create procedure proc_get_all_policies as
begin
	select * from tabl_policyDetails;
end
select* from
create procedure proc_get_by_policyNo(@pNo int) as
begin
	select * from tabl_policyDetails where policyNo=@pNo;
end

create procedure proc_get_by_policyName(@pName varchar(30)) as
begin
	select * from tabl_policyDetails where policyName=@pName;
end

create procedure proc_get_policy_in_range(@start float, @end float) as
begin
	select * from tabl_policyDetails where policyPremium between @start and @end;
end

create procedure proc_add_policy(@pNo int, @pName varchar(30), @pPremium float) as
begin
	insert into tabl_policyDetails values(@pNo, @pName, @pPremium);
end

create procedure proc_edit_premium_by_name(@pName varchar(30), @pPremium float) as
begin
	update tabl_policyDetails set policyPremium=@pPremium where policyName=@pName;
end

create procedure del_policy(@pNo int) as
begin
	delete from tabl_policyDetails where policyNo=@pNo;
end

exec proc_get_all_policies
