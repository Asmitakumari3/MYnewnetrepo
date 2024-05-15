create database learning1_views
 use learning1_views

 create table acc_info(
 accNo int ,
 accName varchar(20),
 accType varchar(20),
 accBalance bigint,
 accIsActive bit,
 accBranch int

 constraint pk_accNo primary key(accNo)
 )

 create table branch_info(
 branchNo int primary key,
 branchName varchar(20),
 branchCity varchar(20)
 )

 insert into branch_info values(10,'Kasba','Kolkata')
 insert into branch_info values(20,'Hi-tech','Hyderabad')
 insert into branch_info values(30,'Malad','Mumbai')



 alter table acc_info
 drop constraint pk_accNo

 alter table acc_info
 alter column accBranch int not null

 alter table acc_info
 add constraint pk_accbranch primary key(accBranch)

 insert into acc_info values(1,'Anwesha','Savings',2000,1,10)
 insert into acc_info values(2,'Ayan','PF',1000,1,20)
 insert into acc_info values(3,'Ria','Current',500,0,30)
 insert into acc_info values(4,'Raima','Savings',3000,1,40)
 insert into acc_info values(5,'Ayanika','Current',5000,0,50)
 insert into acc_info values(6,'Raj','PF',500,0,60)
 insert into acc_info values(7,'Nikhil','Savings',1000,1,70)
 insert into acc_info values(8,'Niraj','Current',2000,0,80)
 insert into acc_info values(9,'Rahul','PF',53000,0,90)
 insert into acc_info values(10,'Raya','Savings',1000,1,100)


 create view share_view as
 select accNo as [Account Number],
		accName as Name,
		accBalance as Balance,
		accBalance *0.05 as [Future Balance]
 from acc_info

 select * from share_view

 create view savings_view as
  select accNo as [Account Number],
		accName as Name,
		accType as Savings
		from acc_info
		where accType='Savings'

select * from savings_view

create view total_view as 
select accBranch,count(*) as [Total_accounts]
from acc_info join branch_info
on accBranch=branchNo
group by accBranch

select * from total_view

create view balance_view as
select accName as name
from acc_info join branch_info
on accBranch=branchNo
where accBalance <5000

select * from balance_view




