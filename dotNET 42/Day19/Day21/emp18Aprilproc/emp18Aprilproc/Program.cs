//See https://aka.ms/new-console-template for more information

using Microsoft.Data.SqlClient;

//SqlConnection con = new SqlConnection("server=DA55CE762AC15EE;database=empDB1_SP;integrated security=true;TrustServerCertificate=true");
//SqlCommand cmd = new SqlCommand("proc_AllDept", con);
//cmd.CommandType = System.Data.CommandType.StoredProcedure;

//con.Open();
//SqlDataReader read = cmd.ExecuteReader(); 

//while(read.Read())
//{
//    Console.WriteLine(read[0]);
//    Console.WriteLine(read[1]);
//    Console.WriteLine(read[2]);
//    Console.WriteLine("----------------------");
//}
//read.Close();
//con.Close();

//select one record
//SqlConnection con = new SqlConnection("server=da55ce762ac15ee;database=empdb1_sp;integrated security=true;trustservercertificate=true");
//SqlCommand cmd = new SqlCommand("proc_deptinfo", con);
//cmd.CommandType = System.Data.CommandType.StoredProcedure;
//Console.WriteLine("enter the department number");
//int deptNo = Convert.ToInt32(Console.ReadLine());
//cmd.Parameters.AddWithValue("@dno", deptNo);
//con.Open();

//SqlDataReader read = cmd.ExecuteReader();

//if (read.Read())
//{
//    Console.WriteLine(read[0]);
//    Console.WriteLine(read[1]);
//    Console.WriteLine(read[2]);
//}

//else
//{
//    Console.WriteLine("dept not found");
//}
//read.Close();

//con.Close();


//SqlConnection con = new SqlConnection("server=DA55CE762AC15EE;database=empDB1_SP;integrated security=true;TrustServerCertificate=true");
//SqlCommand cmd = new SqlCommand("proc_deptByCity", con);
//cmd.CommandType = System.Data.CommandType.StoredProcedure;
//Console.WriteLine("Enter the City ");
//string deptCity = Console.ReadLine();
//cmd.Parameters.AddWithValue("@City", deptCity);
//con.Open();

//SqlDataReader read = cmd.ExecuteReader();




//if (read.Read())
//{
//    if (read[0] != null)
//    {


//        Console.WriteLine(read[0]);
//        Console.WriteLine(read[1]);
//        Console.WriteLine(read[2]);

//        while (read.Read())
//        {
//            Console.WriteLine(read[0]);
//            Console.WriteLine(read[1]);
//            Console.WriteLine(read[2]);
//        }


//    }


//}

//else
//{
//    Console.WriteLine("Dept not found");
//}

//read.Close();

//con.Close();

///* Insering a new record*/

//SqlConnection con = new SqlConnection("server=DA55CE762AC15EE;database=empDB1_SP;integrated security=true;TrustServerCertificate=true");
//SqlCommand cmd = new SqlCommand("proc_NewDept", con);
//cmd.CommandType = System.Data.CommandType.StoredProcedure;

//Console.WriteLine("Enter the DeptNo ");
//int deptNo = Convert.ToInt32(Console.ReadLine());

//Console.WriteLine("Enter department name");
//string deptName = Console.ReadLine();

//Console.WriteLine("Enter department city");
//string deptCity = Console.ReadLine();

//cmd.Parameters.AddWithValue("@deptNo", deptNo);
//cmd.Parameters.AddWithValue("@deptName", deptName);
//cmd.Parameters.AddWithValue("@deptCity", deptCity);

//con.Open();

//int rows = cmd.ExecuteNonQuery();

//Console.WriteLine("Record added");

//con.Close();


///*deleting a new record */

//SqlConnection con = new SqlConnection("server=DA55CE762AC15EE;database=empDB1_SP;integrated security=true;TrustServerCertificate=true");
//SqlCommand cmd = new SqlCommand("proc_deleteDept", con);
//cmd.CommandType = System.Data.CommandType.StoredProcedure;

//Console.WriteLine("Enter the DeptNo ");
//int deptNo = Convert.ToInt32(Console.ReadLine());


//cmd.Parameters.AddWithValue("@deptNo", deptNo);

//con.Open();

//int rows = cmd.ExecuteNonQuery();

//Console.WriteLine("Department deleted");

//con.Close();


///*update a record */

SqlConnection con = new SqlConnection("server=DA55CE762AC15EE;database=empDB1_SP;integrated security=true;TrustServerCertificate=true");
SqlCommand cmd = new SqlCommand("proc_EditDeptName", con);
cmd.CommandType = System.Data.CommandType.StoredProcedure;

Console.WriteLine("Enter the DeptNo ");
int deptNo = Convert.ToInt32(Console.ReadLine());
Console.WriteLine("Enter department city");
string deptCity = Console.ReadLine();
cmd.Parameters.AddWithValue("@deptNo", deptNo);

cmd.Parameters.AddWithValue("@deptCity", deptNo);

con.Open();

int rows = cmd.ExecuteNonQuery();
Console.WriteLine("Record updated ");

con.Close();