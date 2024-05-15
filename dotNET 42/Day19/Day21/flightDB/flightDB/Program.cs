// See https://aka.ms/new-console-template for more information
//Console.WriteLine("Hello, World!");
using Microsoft.Data.SqlClient;

SqlConnection con = new SqlConnection("server=DA55CE762AC15EE; database=flightDB1_SP; integrated security=true; TrustServerCertificate=true");

con.Open();

GetAllFlights(con);

Console.Write("\nEnter flight no: ");
int fNo = Convert.ToInt32(Console.ReadLine());
GetFlightWithId(fNo, con);

Console.Write("\nEnter source city: ");
string src = Console.ReadLine();
Console.Write("Enter destination city: ");
string dest = Console.ReadLine();
GetFLightSrcDest(src, dest, con);

con.Close();


void GetFLightSrcDest(string src, string dest, SqlConnection con)
{
    SqlCommand cmd = new SqlCommand("proc_flights_src_dest", con);
    cmd.CommandType = System.Data.CommandType.StoredProcedure;
    cmd.Parameters.AddWithValue("@src", src);
    cmd.Parameters.AddWithValue("@dest", dest);

    SqlDataReader rd = cmd.ExecuteReader();

    PrintData(rd);
    rd.Close();
}

void GetAllFlights(SqlConnection con)
{
    SqlCommand cmd = new SqlCommand("sel_all_flights", con);
    cmd.CommandType = System.Data.CommandType.StoredProcedure;

    SqlDataReader rd = cmd.ExecuteReader();

    PrintData(rd);
    rd.Close();
}
void GetFlightWithId(int id, SqlConnection con)
{
    SqlCommand cmd = new SqlCommand("sel_flight", con);
    cmd.CommandType = System.Data.CommandType.StoredProcedure;
    cmd.Parameters.AddWithValue("@idNo", id);

    SqlDataReader rd = cmd.ExecuteReader();

    PrintData(rd);
    rd.Close();
}

void PrintData(SqlDataReader rd)
{
    while (rd.Read())
    {
        Console.WriteLine($"{rd[0]}\t{rd[1]}\t{rd[2]}\t{rd[3]}\t{rd[4]}");
    }
}