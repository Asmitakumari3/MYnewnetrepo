

	create table employeeInfo(empNo int,
							  empName varchar(20),
							  empDesignation varchar(20),
							   empDept int, 
							   empSalary int, empIsActive bit)

		
		alter table employeeInfo alter column empNo int not null
		alter table employeeInfo add constraint pk_empNo primary key(empNo)

	
		alter table employeeInfo add constraint chk_empDesignation_list check (empDesignation in ('Developer','HR','Manager'))

	 
		create table deptInfo(deptNo int ,
							  deptName varchar(20),
							  deptCity varchar(20),
								constraint pk_deptNo primary key(deptNo),
								constraint unk_deptName unique(deptName))

		
		alter table employeeInfo add constraint fk_empDeptNo foreign key(empDept) references deptInfo

	
		alter table employeeInfo add constraint chk_min_empSalary check(empSalary > 10000)

	
		alter table employeeInfo  alter column empIsActive bit not null 

		
		insert into DeptInfo values(10,'IT','Kolkatta')
		insert into DeptInfo values(20,'HR','Mumbai')
		insert into DeptInfo values(30,'Accounts','Chennai')
		insert into DeptInfo values(40,'Sales','Pune')
		insert into DeptInfo values(50,'Transport','Bangalore')

	
		insert into EmployeeInfo values(1,'Nikhil','Developer',10,15000,1)		
		insert into EmployeeInfo values(2,'Amay','HR',20,15000,1)		
		insert into EmployeeInfo values(3,'John','Developer',10,15000,1)		
		insert into EmployeeInfo values(4,'Amar','HR',20,15000,1)		
		insert into EmployeeInfo values(5,'Akbar','Developer',10,15000,1)
		insert into EmployeeInfo values(6,'Anthony','Developer',10,15000,0)		
		insert into EmployeeInfo values(7,'Naresh','Sales Manager',40,15000,1)		
		insert into EmployeeInfo values(8,'Suresh','Developer',10,15000,1)		
		insert into EmployeeInfo values(9,'Ramesh','Tr.Manager',50,15000,1)		
		insert into EmployeeInfo values(10,'Mitesh','Manager',10,15000,0)





		--DQL

	
		select * from EmployeeInfo

	
		select empNo,empName, empDesignation,empSalary from EmployeeInfo

		--3. select data with column alias, proper column heading
		select empNo as [Employee No],  --use a square bracket if you have a space in column name
			  empName as [First Name],
			  empDesignation as [Working As],
			  empSalary as Salary
			  from employeeInfo

		--4. select with concatination / form a redable statement
			select empName + ' is a ' + empDesignation as [Employee Details]from EmployeeInfo

	    --5. select with filter / search -- we use a where clause
		select * from EmployeeInfo where empDesignation = 'HR'  --this will show me only HR records
		select * from EmployeeInfo where empDesignation = 'Developer'  --this will show me only HR records

		select * from EmployeeInfo where empDesignation = 'Developer' and empIsActive =1 --this will show me only HR records

		select * from EmployeeInfo where empDept = 10 or empDept = 40

		--6. select distinct values from a column - unique values from a colum
		select empDesignation from EmployeeInfo
		select distinct empdesignation as Designations from EmployeeInfo

		--7. Sort the data - view data in asc or desc order - use order by clause
		--by default
			select empName from EmployeeInfo
			select empName from EmployeeInfo order by empName
			select empName from EmployeeInfo order by empName desc

			select empNo, empName from EmployeeInfo
			--by default when primary key is part of select statement, you will see result sorted by primary key values
			select empNo, empName from EmployeeInfo order by empNo desc

			select empNo, empName, empDesignation from EmployeeInfo
			
			select empNo, empName, empDesignation from EmployeeInfo order by empDesignation
			select empNo, empName, empDesignation from EmployeeInfo order by empDesignation desc

			select empNo, empName, empDesignation from EmployeeInfo order by empDesignation, empName -- nested sorting

			--8, sort and filter in a same query
			select * from EmployeeInfo where empNo > 3 order by empName

			--9. select with functions
				--string functions
				--upper, lower, substring, concat
				select empName, upper(empName) from EmployeeInfo
				select empName, lower(empName) from EmployeeInfo
				select empName, SUBSTRING(empName,1,3) from EmployeeInfo
				select empName, upper(SUBSTRING(empName,1,3)) from EmployeeInfo
				select CONCAT('Hello ',empName,' welcome to E&Y ',empDesignation, ' will fit you') from EmployeeInfo
				--let us create email address on fly
				--firstname @ myorganization.co.first2characters_of_designaiton

				--aggregate function -- mostly works in numberic columns
				--sum, min, max, count, avg
				select sum(empSalary) as [Total Salary] from EmployeeInfo
				select min(empSalary) as [Minimum Salary] from EmployeeInfo
				select max(empSalary) as [Maximum Salary] from EmployeeInfo
				select count(empName) as [Total Employees] from EmployeeInfo
				select avg(empSalary) as [Average Salary] from EmployeeInfo
				select empsalary from EmployeeInfo

				select sum(empsalary) from EmployeeInfo where empDesignation = 'Developer'				
				select sum(empsalary) from EmployeeInfo where empDesignation = 'HR'				
				select sum(empsalary) from EmployeeInfo where empDesignation = 'Manager'

				select count(empNo) from EmployeeInfo where empDesignation = 'Developer'				
				select count(empNo) from EmployeeInfo where empDesignation = 'HR'				
				select count(empNo) from EmployeeInfo where empDesignation = 'Manager'


				--this are 3 seperate queries
				
				--select sum(empsalary) from EmployeeInfo where empDesignation = 'Developer'				
				--select sum(empsalary) from EmployeeInfo where empDesignation = 'HR'				
				--select sum(empsalary) from EmployeeInfo where empDesignation = 'Manager'

				--10. group by 
				--projects has a requerirement to display count for every designation
					--there could be 10 designations in table
					--insted of fireing the queries 10 times, use group by clause

				select empDesignation, sum(empSalary) as Total from EmployeeInfo
						group by empDesignation

				select empDesignation, sum(empSalary) as Total from EmployeeInfo
						group by empDesignation

				--how much salary is paid in every department ?
				select empdept, sum(empSalary) from EmployeeInfo
						group by empDept


				select * from EmployeeInfo