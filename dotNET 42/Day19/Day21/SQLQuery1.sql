CREATE DATABASE empDB1_SP;
use empDB1_SP;

create table deptInfo
(
deptNo int primary key,
deptName varchar(20),
deptCity varchar(20)
)

insert into deptInfo values(10, 'HR','Mumbai')
insert into deptInfo values(20, 'IT','Kolkata')
insert into deptInfo values(30, 'Sales','Pune')
insert into deptInfo values(40, 'Accounts','New York')
insert into deptInfo values(50, 'Transport','Paris')

create procedure proc_AllDept
as
begin
    select * from deptInfo
end
exec proc_AllDept

create procedure proc_deptInfo(@dNo int)
as
begin
    select * from deptInfo where deptNo =@dNo
end
exec proc_deptInfo 20

create procedure proc_deptByCity(@city varchar(20))
as
begin
    select* from deptInfo where deptCity = @city
end

exec proc_deptByCity 'Mumbai'

create procedure proc_NewDept(@deptNo int, @deptName varchar(20), @deptCity varchar(20))
as
begin
    insert into deptInfo values(@deptNo, @deptName,@deptCity)
end
exec proc_NewDept 60,'Cafe','Mumbai'

create procedure proc_deleteDept(@deptno int)
as
begin
    delete from deptInfo where deptNo = @deptno
end

exec proc_deleteDept 20
select *from deptInfo


create procedure proc_EditDeptName(@deptNo int, @newDeptName varchar(20))
as
begin
    update deptInfo set deptName = @newDeptName where @deptNo = @deptNo
end

exec proc_EditDeptName 30, 'Revenue'


select* from deptInfo