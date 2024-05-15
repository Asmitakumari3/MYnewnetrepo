// See https://aka.ms/new-console-template for more information
using System.Data.SqlClient;
using System.IO;

//SqlCommand cmd = new SqlCommand("insert into deptInfo values(70,'IT','Pune')", con);


SqlConnection con = new SqlConnection("server=DA55CE762AC15EE;database=EmployeeManagement;integrated security=true");
//SqlCommand cmd_deleteDept = new SqlCommand("delete from deptinfo where deptNo=60", con);
con.Open();
cmd.ExecuteNonQuery();  
Console.WriteLine("Dept added successfully");
con.Close();
//Console.WriteLine("Dept deleted successfully");

//SqlConnection con = new SqlConnection("server=DA55CE762AC15EE;database=EmployeeManagement;integrated security=true");
//SqlCommand cmd_update = new SqlCommand("update deptInfo set deptName= 'training' where deptlocation='pune'", con);
//con.Open();
//cmd_update


Console.WriteLine("!!-----Employee Management System-----!!");


Console.WriteLine("Please Login");
Console.WriteLine("Enter User Name");
string userName = Console.ReadLine();
Console.WriteLine("Enter Password");
string pwd = Console.ReadLine();

cmd.CommandText = ("select count(*) from loginInfo where username=@uName and password=@pwd");
cmd.Parameters.AddWithValue("@uName", userName);
cmd.Parameters.AddWithValue("@pwd", pwd);
con.Open();
int count = (int)cmd.ExecuteScalar();
con.Close();




Console.WriteLine("Enter A choice");
Console.WriteLine("1. Add New Department");
Console.WriteLine("2. Update Department");
Console.WriteLine("3. Delete Department");
int choice = Convert.ToInt32(Console.ReadLine());

SqlConnection con = new SqlConnection("server=DA55CE762AC15EE;database=employeeManagementDB;integrated security=true");
SqlCommand cmd = new SqlCommand();
cmd.Connection = con;


switch (choice)
{
    case 1:
        Console.WriteLine("Enter New Dept No");
        int newDeptNo = Convert.ToInt32(Console.ReadLine());
        Console.WriteLine("Enter New Dept Name");
        string deptName = Console.ReadLine();
        Console.WriteLine("Enter New Dept City");
        string deptLocation = Console.ReadLine();

        cmd.CommandText = "insert into deptInfo values(@deptNo,@deptName,@deptCity)";
        cmd.Parameters.AddWithValue("@deptNo", newDeptNo);
        cmd.Parameters.AddWithValue("@deptName", deptName);
        cmd.Parameters.AddWithValue("@deptCity", deptLocation);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Console.WriteLine("Department added");
        break;

    case 2:
        cmd.CommandText = "update deptInfo set deptName = @deptName where deptNo = @deptNo";
        Console.WriteLine("Enter Dept No");
        int newDeptno = Convert.ToInt32(Console.ReadLine());
        Console.WriteLine("Enter New Dept Name");
        int newDeptName = Convert.ReadLine();
        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("@deptName", newDeptName);
        cmd.Parameters.AddWithValue("@deptNo", newDeptno);
        con.Open();
        cmd.ExecuteNonQuery();  
        con.Close();
        break;


    case 3:
        cmd.CommandText = "select*from deptInfo where deptNo = @deptNo";
        Console.WriteLine("Enter Department Non");
        int deptNo = Convert.ToInt32(Console.ReadLine());
        cmd.Parameters.AddWithValue("@deptNo", deptNo);
        con.Open();
        int no = 10;
        string name = "Nik";

        SqlDataReader readDeptRow = cmd.ExecuteReader();

        if(readDeptRow.Read())
        {
            Console.WriteLine("Dept No : " + readDeptRow[0]);
            Console.WriteLine("Dept Name : " + readDeptRow[1]);
            Console.WriteLine("Dept Location : " + readDeptRow[2]);
        }
        else
        {
            Console.WriteLine("Sorry dept not found");

        }
        readDeptRow.Close();    
        con.Close();
        break;




    case 4:

        cmd.CommandText = "select count(*) from EmployeeInfo";
        con.Open();
          int total = (int)cmd.ExecuteScalar();
        Console.WriteLine("Total" + total + "Employees");
        con.Close();
        break;
    default:
        break;



        
}








