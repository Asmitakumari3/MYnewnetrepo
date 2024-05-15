using Microsoft.Data.SqlClient;
SqlConnection con = new SqlConnection("server=DA55CE762AC15EE;database=flightDB;integrated security = true;TrustServerCertificate = true;");
SqlCommand cmd = new SqlCommand("proc_NewFlight", con);
cmd.CommandType = System.Data.CommandType.StoredProcedure;

Console.WriteLine("Enter the flight Number");
int flightNo = Convert.ToInt32(Console.ReadLine());
Console.WriteLine("Enter the Flight Source");
string flightSource = Console.ReadLine();
Console.WriteLine("Enter the flight Destination");
string flightDestination = Console.ReadLine();
Console.WriteLine("Enter the flight fare");
int flightfare = Convert.ToInt32(Console.ReadLine());

cmd.Parameters.AddWithValue("@flightNo", flightNo);
cmd.Parameters.AddWithValue("@flightSource", flightSource);
cmd.Parameters.AddWithValue("@flightDestination", flightDestination);
cmd.Parameters.AddWithValue("@flightFare", flightfare);
con.Open();
int action = cmd.ExecuteNonQuery();
con.Close();
if (action > 0)
{
    //Console.WriteLine("New Flight Inserted Successfully");
}
else
{
    Console.WriteLine("Action not successful");
}
