// See https://aka.ms/new-console-template for more information
using emp_APP_EF;
Console.WriteLine("Hello, World!");

EmployeeInfoDbEfContext db = new EmployeeInfoDbEfContext();//source for LINQ queries
var emp = from e in db.EmployeeInfo
          select e; //(you can use filter, order by, group by, in between this 2 lines)

	foreach (var item in emp)
{
    Console.WriteLine(item.empNo);
    Console.WriteLine(item.empName);
    Console.WriteLine(item.empDesignation);
}
