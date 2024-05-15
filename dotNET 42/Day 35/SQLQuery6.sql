create database asmitakumari_bankingDB
create table branchInfo(branchId int primary key,
branchName varchar(50),
branchLocation varchar(70))

create table accountInfo(accNo int primary key,
accName varchar(50),
accType varchar(80))

insert into branchInfo(branchId,branchName, branchLocation)
values(1,'Main Branch','Kolkata'),
      (2,'Eastside Branch', 'Panskura'),
	  (3,'Westside Branch', 'Howrah')
insert into accountInfo(accNo, accName,accType)
values (111,'Asmita','Saving'),
       (112,'Annu','Current'),
	   (113,'Ashu','PF'),
	   (114,'Ashutosh','Savings'),
	   (115,'Archana','Current'),
	   (116,'Deep','PF')


	   select * from branchInfo
