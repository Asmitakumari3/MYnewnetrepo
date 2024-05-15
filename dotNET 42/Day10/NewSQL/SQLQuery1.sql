create DATABASE EmployeeManagement

CREATE TABLE DeptInfo 
(
  deptNo int,
  deptName VARCHAR(20) not null,
  deptLocation varchar(20) not null,
  deptHOD varchar(20) not null,
  constraint pk_deptNo primary key(deptNo),
  constraint unk_deptName unique(deptName),
  constraint chk_depLocation_list check (deptLocation in ('Mumbai' ,'Pune','Kolkata')),
  constraint chk_deptHOD_len check (len(deptHOD) >=3)
  )

  insert into DeptInfo values(10,'Sales','Mumbai','Sameer')
    insert into DeptInfo values(20,'IT','Kolkata','Ashu')
	  insert into DeptInfo values(30,'HR','PUNE','SONU')


	 select* from DeptInfo

	 create table EmployeeInfo
	 (
	  empNo int,
	  empName varchar(20),
	  empDesignation varchar(20),
	  empSalary int,
	  empIsActive bit,
	  empDeptNo int,
	  Constraint pk_empNo2 primary key(empNo),
	  Constraint chk_empName_len2 check (len(empName) >= 3),
	  Constraint fk_empDepNo_deptInfo foreign key(empDeptNo) references deptInfo
	  )


	  alter table deptInfo
	  drop constraint chk_deptLocation_list

	  alter table deptInfo
	  add constraint chk_deptLocation_list check(deptLocation in('Mumbai','pune','Kolkata','Chennai'));

	  use EmployeeManagement
	  create table myEmployees
	  (
	  empNo int identity,
	  empName varchar(20)
	  )
	  insert into myEmployees values('Nikhil')
	  insert into myEmployees values('Jay')
	  insert into myEmployees values('Rohan')
	  insert into myEmployees values('Mohan')
	  insert into myEmployees values('Sohan')
	   
	   select*from myEmployees 



		  
	
			 


	 
	 





  