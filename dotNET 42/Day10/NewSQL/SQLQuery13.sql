

select*from EmployeeInfo

Create view v_empInfo
as
   select concat('Dear',empName), empDesignation from employeeinfo


   create view v_empInformation
   as
     select empNo, empName,empSalary,deptInfo`