// See https://aka.ms/new-console-template for more information
//Console.WriteLine("Hello, World!");


using System.Data;
using System.Data.SqlClient;


SqlConnection con = new SqlConnection("server=bookinginstance/sqlserver;database=Holiday"+
  "BookingDB;username=holidaysadmin;password=Holidays@1234");


Q1.-2- 

cmd.ExecuteNonQuery();`