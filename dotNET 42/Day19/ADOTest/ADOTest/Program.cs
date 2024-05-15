// See https://aka.ms/new-console-template for more information
//Console.WriteLine("Hello, World!");

using System.IO;
using System.Data;
using System.Data.SqlClient;

SqlCommand cmd = new SqlCommand();
const.Open();
cmd.ExecuteNonQuery();
con.Close();

