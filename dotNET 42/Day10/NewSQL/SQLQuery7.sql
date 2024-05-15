--DQL


--1. Create a table employeeinfo
	empNo, empName, empDesignation, empDept, empSalary, empIsActive
	without any constraint
	--create this table


--2 alter table as below
	--a. add a primary key on empNo
	--b. add designation to be only Developer, HR and Manager
	--c. create a new table deptInfo 
			--deptNo,deptName,deptCity -- deptNo is a primary key and deptname will be unique key
	--d. add a foreign key constraint on employeeinfo table, for empdept column
    --e. empSalary should be minnimum 10,000
	--f. empIsActive is a mandatory field

	--g. add 5 branch records
	--h. add 10 employees

	create table employeeInfo(empNo int,
							  empName varchar(20),
							  empDesignation varchar(20),
							   empDept int, 
							   empSalary int, empIsActive bit)

		--a 
		alter table employeeInfo alter column empNo int not null
		alter table employeeInfo add constraint pk_empNo primary key(empNo)

		--b. 
		alter table employeeInfo add constraint chk_empDesignation_list check (empDesignation in ('Developer','HR','Manager'))

		--c. 
		create table deptInfo(deptNo int ,
							  deptName varchar(20),
							  deptCity varchar(20),
								constraint pk_deptNo primary key(deptNo),
								constraint unk_deptName unique(deptName))

		--d. 
		alter table employeeInfo add constraint fk_empDeptNo foreign key(empDept) references deptInfo

		--e. 
		alter table employeeInfo add constraint chk_min_empSalary check(empSalary > 10000)

		--f.
		alter table employeeInfo  alter column empIsActive bit not null 

		--g.
		insert into DeptInfo values(10,'IT','Kolkatta')
		insert into DeptInfo values(20,'HR','Mumbai')
		insert into DeptInfo values(30,'Accounts','Chennai')
		insert into DeptInfo values(40,'Sales','Pune')
		insert into DeptInfo values(50,'Transport','Bangalore')

		--h. 
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

		--1. Select all the data, with all the columns
		select * from EmployeeInfo

		--2. select all the data with limited columns / columns you want to see / display / read 
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

			--	11. Joins
			--when you want to collect data from 2 or more table we use Joins
					--There are different types of joins
					--a. Equi Join (= operator) -- gives the data based on equal values on both the tables
					--b. Left Join -- collect all the data from left table and only equal data from the right table
					--c. Right Join -- collect all the data from right table and only equal data from left table
					--d. Full JOIN -- collects equal and non equal data from both the tables (combination of left and right)
					--e. Null JOIN -- collect all the non equal data
					--f. Cross JOIN -- Cartisian Product -- not used by developer --use by Analyst for forcasting and predections
																 ---and Production people, for loadbalance and hardware calculaions



			------------------------------------------------------------------------------------------------------
			--To understand and learn joins it is very important you understand the data first
			--Let i understand this with fresh set of values
			--1. Create a new database - EmpDB_JOINS
			--2. Create a table DeptInfo - deptNo, deptName, deptCity (deptno is primary key)
			--3. Insert 3 records, deptno 10, 20 and 30
			--4. Create table employeeInfo - empNo, empName, empDesignation,empDept,empSal (empNo - PK - empDept - FK)
			--5. Insert 4 records for every department 
				--(12 records, i.e when yo insert a record for empDept col mention 10, 20, 30 4 times each)
			--6. specially create to ease the learning of joins
				--lets say company have opened 2 new departments
				--dept 40 -- Aeronautics
				--dept 50 -- Training
				--thus add both the records in dept table


				create database EmpDB_JOINS
				use EmpDB_JOINS

				create table DeptInfo
				(
					deptNo int primary key,
					deptName varchar(20),
					deptCity varchar(20))
				insert into deptInfo values(10,'IT','Mumbai')
				insert into deptInfo values(20,'HR','Chennai')
				insert into deptInfo values(30,'Sales','Pune')


				create table EmployeeInfo
				( empNo int primary key,
				empName varchar(20),
				empDesignation varchar(20),
				empDept int,
				empSal int,
				
				constraint fk_deptno foreign key(empDept) references DeptInfo)

				insert into employeeInfo values(1,'Nikhil','Trainer',10,5000)
				insert into employeeInfo values(2,'Tarun','Sales',20,5000)
				insert into employeeInfo values(3,'Karan','Developer',30,5000)
				insert into employeeInfo values(4,'William','HR',10,5000)
				insert into employeeInfo values(5,'Joy','Trainer',30,5000)
				insert into employeeInfo values(6,'Smitiri','Trainer',20,5000)
				insert into employeeInfo values(7,'Raashi','Trainer',10,5000)
				insert into employeeInfo values(8,'Mandeep','Sales',30,5000)
				insert into employeeInfo values(9,'Sahil','Trainer',10,5000)
				insert into employeeInfo values(10,'Sumit','Sales',20,5000)
				insert into employeeInfo values(11,'Amin','Developer',30,5000)
				insert into employeeInfo values(12,'Deepak','Developer',20,5000)


				insert into deptInfo values(40,'Aeronautics','Kolkatta')
				insert into deptInfo values(50,'Training','Bangalore')

				select empNo, empName, empDesignation, deptName, deptCity 
						from employeeInfo join deptInfo
						on empDept = deptNo
						where deptCity = 'Chennai'
						order by deptCity desc,empName


				select deptCity, count(empNo) [Strength] from employeeInfo join deptInfo
						on empDept = deptNo
						group by deptCity

				--write an join to create an email address 
				--format empName.first2CharactersofDesignation@myorg.co.first2charactersofEmpCity
						--email address are always in lower case

				select lower(CONCAT(empName,'.',substring(empDesignation,1,2),'@myorg.co.',substring(deptCity,1,2))) as Email
						from employeeInfo join deptInfo
						on empDept = deptNo

				--we added 2 dept which has no reference in emptable
				--let us also add some emp which are newly hired by still in training so dept is yet to be allocated

				select * from employeeInfo
				insert into employeeInfo values(13,'Mansi','Developer',null,6000)
				insert into employeeInfo values(14,'Janhavi','Blogger',null,7000)
				insert into employeeInfo values(15,'Sonam','HR',null,4000)
				


				select * from employeeInfo join deptInfo 
					on empDept = deptNo


			--equi join looks good, but HR wants to get the list of all the employees along with deptInfo
			--thus we need all the details from left table
			--we will use left join


				select * from employeeInfo left join deptInfo 
					on empDept = deptNo

				select * from employeeInfo right join deptInfo 
				  on empDept = deptNo

				select * from employeeInfo full join deptInfo 
				  on empDept = deptNo

				select * from employeeInfo full join deptInfo 
				  on empDept = deptNo where empDept is null




























				--Join the data from tables - join the tables
				--Dept table - 5 records
				--Emp tables - 12 records

				--Equi Join - gives data which is equal
					--comparision point will be PK and FK (deptno col data from the tables)
				select * from employeeInfo join deptInfo
					on employeeInfo.empDept = deptInfo.deptNo








































				














		




	






		




		





















