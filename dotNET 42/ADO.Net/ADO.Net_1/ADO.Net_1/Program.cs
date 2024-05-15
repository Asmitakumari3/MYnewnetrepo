
using System.Data;
using System.Data.SqlClient;
Console.WriteLine("Hello, World!");

#region Insert record
SqlConnection con = new SqlConnection("server=DA55CE762AC15EE;database=EmployeeManagement;integrated security=true;");
SqlCommand cmd1 = new SqlCommand("insert into DeptInfo values(60,'Operations','Hyderabad')",con);
con.Open();
cmd1.ExecuteNonQuery();
con.Close();
Console.WriteLine("New Department Added");
#endregion

#region Delete Record
SqlConnection con2 = new SqlConnection("server=DA55CE762AC15EE;database=EmployeeManagement;integrated security=true;");
SqlCommand cmd2 = new SqlCommand("delete from DeptInfo where deptName='Operations' ",con2);
con2.Open();
cmd2.ExecuteNonQuery();
con2.Close();
Console.WriteLine("Department successfully Deleted");
#endregion

#region Update record 
//SqlConnection con3 = new SqlConnection("server=FC23E8BE9FFF5FE;database=EmployeeManagementDB;integrated security=true;");
//SqlCommand cmd3 = new SqlCommand("update DeptInfo set deptName='Training' where deptCity='Pune'",con3);
//con3.Open();
//cmd3.ExecuteNonQuery();
//con3.Close();
//Console.WriteLine("Department successfully Updated");
#endregion

Console.WriteLine("------------- Employee Management -----------");
Console.WriteLine(" Enter your choice");
Console.WriteLine("1. Add a new Department");
Console.WriteLine("2. Update an existing Department");
Console.WriteLine("3. Delete an exisitng Department");
int choice = Convert.ToInt32(Console.ReadLine());

SqlConnection con4 = new SqlConnection("server=DA55CE762AC15EE;database=EmployeeManagement;integrated security=true;");
SqlCommand cmd4 = new SqlCommand();
cmd4.Connection = con4;
switch (choice)
{
    #region Case 1 - Add a Dept
    case 1:
        Console.WriteLine("Enter New Department No");
        int newDeptNo = Convert.ToInt32(Console.ReadLine());
        Console.WriteLine("Enter New Department Name");
        string newDeptName = Console.ReadLine();
        Console.WriteLine("Enter new Department City");
        string newDeptCity = Console.ReadLine();
        string newDeptHOD= Console.ReadLine();

        cmd4.CommandText = "insert into DeptInfo values(@deptNo,@deptName,@deptCity,@deptHOD)";
        cmd4.Parameters.AddWithValue("@deptNo", newDeptNo);
        cmd4.Parameters.AddWithValue("@deptName", newDeptName);
        cmd4.Parameters.AddWithValue("@deptCity", newDeptCity);
        cmd4.Parameters.AddWithValue("@deptHOD", newDeptHOD);

        con4.Open();
        cmd4.ExecuteNonQuery();
        con4.Close();
        Console.WriteLine("New Department Successfully Added");
        break;
    #endregion

    #region Case 2 - Update a Department
    case 2:
        Console.WriteLine("Enter the department no which you wish to update");
        int upd_DeptNo = Convert.ToInt32(Console.ReadLine());
        Console.WriteLine("Enter the new department name");
        string upd_DeptName = Console.ReadLine();
        cmd4.CommandText = "update DeptInfo set deptName=@deptName where deptNo=@deptNo";
        cmd4.Parameters.Clear();
        cmd4.Parameters.AddWithValue("@deptNo", upd_DeptNo);
        cmd4.Parameters.AddWithValue("@deptName", upd_DeptName);
        con4.Open();
        cmd4.ExecuteNonQuery();
        con4.Close();
        Console.WriteLine("Record Successfully Updated");
        break;
    #endregion

    #region Case 3 - Delete a Department
    case 3:
        Console.WriteLine("Enter the department no you wish to delete");
        int del_DeptNo = Convert.ToInt32(Console.ReadLine());
        cmd4.CommandText = "delete from DeptInfo where deptNo=@deptNo";
        cmd4.Parameters.Clear();
        cmd4.Parameters.AddWithValue("@deptNo", del_DeptNo);
        con4.Open();
        cmd4.ExecuteNonQuery();
        con4.Close();
        Console.WriteLine("Record Successfully Deleted");
        break;
    #endregion

    default:
        Console.WriteLine("Please enter the correct choice number. Thank You");
        break;
}
