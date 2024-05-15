create database BankingDB2_SQL

use BankingDB2_SQL


create table BranchInfo(
branchNo int primary key,
branchName varchar(20) unique not null,
branchCity varchar(20) not null,

constraint chk_branchCity check(branchCity in ('Kolkata','Mumbai','Pune'))
)

insert into BranchInfo values(10,'SaltLake','Kolkata')
insert into BranchInfo values(20,'Ruby','Kolkata')

insert into BranchInfo values(30,'Malad','Mumbai')
insert into BranchInfo values(40,'Hi-tech','Mumbai')

insert into BranchInfo values(50,'Westin','Pune')
insert into BranchInfo values(60,'rashberry','Pune')

select * from BranchInfo


alter table BranchInfo
drop constraint chk_branchCity

alter table BranchInfo
add  constraint chk_branchCity check(branchCity in ('Kolkata','Mumbai','Pune','Chennai','Bengalore'))


create table accountInfo(
accNo int primary key,
accName varchar(20) not null,
accType varchar(20) not null,
accBalance bigint,
accIsActive bit not null,
accBranch int not null ,

constraint chk_accName check(len(accName)>=3),

constraint chk_accType check(accType in ('Savings','Current')),

constraint chk_accBalance check(accBalance >=100 and accBalance<=1000000),

constraint fk_accBranch foreign key(accBranch) references BranchInfo


)
alter table accountInfo
drop constraint chk_accType


alter table accountInfo
add constraint chk_accType check(accType in ('Savings','Current','PF'))



INSERT INTO accountInfo (accNo,accName, accType, accBalance, accIsActive, accBranch)
VALUES 
(100,'John', 'Savings', 60000, 1, 10),
(101,'Emma', 'Current', 23000, 1, 20),
(102,'Robert', 'PF', 100000, 0, 30),
(103,'Anna', 'Savings', 45000, 1, 40),
(104,'James', 'Current', 40000, 1, 50),
(105,'Mary', 'Savings', 78500, 1, 10),
(106,'Richard', 'PF', 89000, 1, 20),
(107,'Jessica', 'Savings', 13000, 0, 30),
(108,'Charles', 'PF', 600000, 1, 40),
(109,'Linda', 'Savings', 187000, 1, 50),
(110,'Michael', 'Current', 78000, 0, 10),
(111,'Christina', 'Savings', 91000, 1, 20),
(112,'Daniel', 'PF', 25800, 1, 30),
(113,'Nicole', 'Savings', 48900, 1, 40),
(114,'Anthony', 'PF', 30000, 1, 50),
(115,'Sarah', 'Savings', 34300, 1, 10),
(116,'William', 'Current', 29000, 0, 20),
(117,'Elizabeth', 'Savings', 64000, 1, 30),
(118,'David', 'PF', 20900, 1, 40),
(119,'Emma', 'Current', 10800, 1, 50);

select * from accountInfo

select accNo,accName,accBalance from accountInfo

select * from accountInfo
where accType='Savings'or accType='PF' 

select * from accountInfo
where accType='Savings'and accBalance>100000 

select * from accountInfo
where accName like 'N%'

select * from accountInfo
order by accType,accName


select * from accountInfo
order by accType,accNo
	
select accNo,accName,accType,accBalance
from accountInfo
where accBalance=(select max(accBalance) from accountInfo)


select accType, count(accType) as[Strengths] from accountInfo
group by accType


select count(*) as[Balance < 50000] from accountInfo
where accBalance<50000


select * 
from BranchInfo join accountInfo
on branchNo=accBranch
where accNo=105


select accNo,accName,accBranch,branchCity

from BranchInfo join accountInfo
on branchNo=accBranch

where accBalance>50000


select accNo
from accountInfo
where accBranch NOT IN (SELECT BranchNo FROM BranchInfo)

SELECT b.BranchName, COUNT(a.accNo) AS NumberOfAccounts 
FROM accountInfo a
JOIN BranchInfo b ON a.accBranch = b.BranchNo
GROUP BY b.BranchName;



SELECT accNo, accBalance * 0.1 AS Interest, accBalance + (accBalance * 0.1) AS FutureBalance 
FROM accountInfo;

select *
from accountInfo left join BranchInfo

ON branchNo=accBranch
where branchCity is NULL

select CONCAT(accName ,'has a accType ',accType ,' in ',accBranch,'branch in ',branchCity ,' and has a account balance ',accBalance)
from accountInfo join BranchInfo
on accBranch=branchNo



select DATEADD(DAY,55,'2014-04-01')

select DATEADD(month,6,'2014-04-01')

select DATEADD(month,12,'2014-04-01')

select DATEADD(month,18,'2014-04-01')




select DATEADD(WEEK,4,'2024-10-01')










