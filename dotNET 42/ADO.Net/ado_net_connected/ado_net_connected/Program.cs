// See https://aka.ms/new-console-template for more information

//SqlConnection con = new SqlConnection("server=DA55CE762AC15EE;database=EmployeeManagement;integrated security=true");
using System.Data;
using System.Data.SqlClient;

#region Insert new record
//SqlConnection con = new SqlConnection("server=86B46DA2A2A958B;database=EmployeeManagementDB;integrated security=true");
//SqlCommand cmd = new SqlCommand("insert into deptInfo values(60,'Canteen','New York')", con);
//con.Open();
//cmd.ExecuteNonQuery(); //this will execute the sql query writting in sql command class
//                        //use below methods from cmd for below operations
//                          //insert, update or delete - use ExecuteNonQuery()
//                          //Select - use ExecuteReader()
//                          //sum,min,max,count,avg - use ExecuteScalar()
//con.Close();
//Console.WriteLine("New Department created");

#endregion

#region Delete record

//SqlConnection con = new SqlConnection("server=86B46DA2A2A958B;database=EmployeeManagementDB;integrated security=true");
//SqlCommand cmd_deleteDept = new SqlCommand("delete from deptInfo where deptNo=60", con);
//con.Open();
//    cmd_deleteDept.ExecuteNonQuery();
//con.Close();

//Console.WriteLine("Dept deleted successfully");
#endregion

#region Update record
//once done
//try the below command
//update deptInfo set deptName=training where deptname=IT
#endregion


#region Global Variables
SqlConnection con = new SqlConnection("server=DA55CE762AC15EE;database=EmployeeManagement;integrated security=true");
SqlCommand cmd = new SqlCommand();
cmd.Connection = con;

#endregion 
Console.WriteLine("!!----- Employee Management System ------!!");

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

if (count == 1)
{
    Console.WriteLine(" Welcome " + userName);

    Console.WriteLine("Enter A choice");
    Console.WriteLine("1. Add New Department");
    Console.WriteLine("2. Update Department");
    Console.WriteLine("3. Delete Department");
    Console.WriteLine("4. View Department");
    Console.WriteLine("5. View Total Employees");


    int choice = Convert.ToInt32(Console.ReadLine());

    //create a new sql con obj 

    switch (choice)
    {
        #region Case 1 - Insert new Dept
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
        #endregion

        #region Case 2 Update department
        case 2:
            cmd.CommandText = "update deptInfo set deptName = @deptName where deptNo=@deptNo";
            Console.WriteLine("Enter  Dept N0");
            int newDeptno = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter New Dept Name");
            string newDeptName = Console.ReadLine();
            cmd.Parameters.Clear(); //so now there are 0 parameters for command obj
                                    //now 2 new are added, so when u execute query, it will execute with 2 para
            cmd.Parameters.AddWithValue("@deptName", newDeptName);
            cmd.Parameters.AddWithValue("@deptNo", newDeptno);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            break;
        #endregion

        #region Case 4 - Read Dept Details
        case 4:
            cmd.CommandText = "select * from deptInfo where deptNo = @deptNo";
            Console.WriteLine("Enter Department Non");
            int deptNo = Convert.ToInt32(Console.ReadLine());
            cmd.Parameters.AddWithValue("@deptNo", deptNo);

            con.Open();

            int no = 10;
            string name = "Nik";

            SqlDataReader readDeptRow = cmd.ExecuteReader();
            //this will point to 1st row

            if (readDeptRow.Read())
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
        #endregion





        case 5:
            cmd.CommandText = "select count(*) from employeeInfo";
            con.Open();
            int total = (int)cmd.ExecuteScalar();
            Console.WriteLine("Total " + total + " Employees");
            con.Close();
            break;
        default:
            break;
    }
}
else
{
    Console.WriteLine("Invalid Credentials");
}



