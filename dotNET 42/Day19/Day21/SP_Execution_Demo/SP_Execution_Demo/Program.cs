using Microsoft.Data.SqlClient;

SqlConnection con = new SqlConnection("server=DA55CE762AC15EE; database=empDB1_SP; integrated security=true; TrustServerCertificate=true");

SqlCommand cmd = new SqlCommand("proc_AllDept", con);

//SqlCommand cmd = new SqlCommand("proc_deptInfo", con);
//cmd.Parameters.AddWithValue("@dNo", 30);
cmd.CommandType = System.Data.CommandType.StoredProcedure;

con.Open();

SqlDataReader dr = cmd.ExecuteReader();

while (dr.Read())
{
    Console.WriteLine($"{dr[0]}\t{dr[1]}\t{dr[2]}");
}
dr.Close();

con.Close();