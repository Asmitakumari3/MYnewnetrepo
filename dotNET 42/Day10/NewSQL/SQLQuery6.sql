Create database EmpDB_JOINS

USE EmpDB_JOINS;
CREATE TABLE DeptInfo (
deptNo INT PRIMARY KEY,
deptName VARCHAR(50),
deptCity VARCHAR(50)
);

INSERT INTO DeptInfo (deptNo, deptName, deptCity) VALUES
(10, 'Department 10','City A'),
(20, 'Department 20','City B'),
(30, 'Department 30','City C');


CREATE TABLE employeeInfo (
empNo INT PRIMARY KEY,
empName VARCHAR(100),
empDesignation VARCHAR(100),
empDept INT,
empSal DECIMAL(10,2),
FOREIGN KEY(empDept) REFERENCES DeptInfo(deptNo));


INSERT INTO employeeInfo(empNo, empName,empDesignation,empDept, empSal) VALUES
(1,'John Doe','Manager',10,50000.00),
(2,'Jane Smith','Developer', 10, 45000.00),
(3,'Alice john','HR',10,4000.00),
(4,'anu gi','Developer',10,4200.00),
(5,'Ashu mishra','Manager',20,230000.00),
(6,'isha kumari','HR',20,42000.00),
(7,'ANNU ROY','Developer',20, 46000.0),
(8,'aishee jha','Manager',20, 51000.00),
(9,'ram roy','Developer',30, 55000.0),
(10,'rony roy','HR',30, 54000.0),
(11,'sita singh','sales',30, 30000.00),
(12,'somu roy','HR',30, 40000.00);




select empNo,empName,empDesignation,deptName, deptCity from employeeInfo join deptInfo on empDept = deptNo where deptCity = 'City A' 
order by deptCity desc, empName

select deptCity, count(empNo) [Strength] from employeeInfo join DeptInfo on empDept = deptNo group by deptCity


SELECT LOWER(CONCAT(e.empName,'.',LEFT(e.empDesignation, 2),'@myorg.co.', LEFT(d.deptCity, 2))) As emailAddress
FROM employeeInfo e JOIN DeptInfo d ON e.empDept = d.deptNo;



select* from employeeInfo
insert into employeeInfo values(13,'Mansi','Developer',null,6000)
insert into employeeInfo values(14,'Janhavi','Blogger',null,7000)
insert into employeeInfo values(15,'Sonam','HR',null,4000)

select* from employeeInfo left join DeptInfo on empDept = deptNo
select* from employeeInfo right join DeptInfo on empDept = deptNo
select* from employeeInfo full join DeptInfo on empDept = deptNo
select* from employeeInfo full join DeptInfo on empDept = deptNo where empDept is null










