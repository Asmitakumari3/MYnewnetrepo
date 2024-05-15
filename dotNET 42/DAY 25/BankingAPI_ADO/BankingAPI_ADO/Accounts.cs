using System.Data.SqlClient;
namespace BankingAPI_ADO
{
    public class Accounts
    {
        public int accNo { get; set; }
        public string accName { get; set; }
        public string accType { get; set; }
        public int accBalance { get; set; }
        public bool accIsActive { get; set; }
        public int accBranch { get; set; }

        public List<Accounts> allAccounts()
        {
            List<Accounts> accountList = new List<Accounts>();
            SqlConnection conn = new SqlConnection("server=DA55CE762AC15EE;database=BankingDB;integrated security=true");
            SqlCommand cmd = new SqlCommand("Select * from AccountInfo", conn);
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                accountList.Add(new Accounts()
                {
                    accNo = Convert.ToInt32(reader[0]),
                    accName = reader[1].ToString(),
                    accType = reader[2].ToString(),
                    accBalance = Convert.ToInt32(reader[3]),
                    accIsActive = Convert.ToBoolean(reader[4]),
                    accBranch = Convert.ToInt32(reader[5])
                }
              );
            }
            reader.Close();

            conn.Close();

            return accountList;
        }

        public Accounts GetAccountByNo(int accNo)
        {
            SqlConnection conn = new SqlConnection("server=DA55CE762AC15EE;database=BankingDB;integrated security=true");

            SqlCommand cmd = new SqlCommand($"select * from AccountInfo where accNo={accNo}", conn);

            conn.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            Accounts res = null;
            if (reader.Read())
            {
                res = new Accounts()
                {
                    accNo = Convert.ToInt32(reader[0]),
                    accName = reader[1].ToString(),
                    accType = reader[2].ToString(),
                    accBalance = Convert.ToInt32(reader[3]),
                    accIsActive = Convert.ToBoolean(reader[4]),
                    accBranch = Convert.ToInt32(reader[5])
                };
            }
            conn.Close();

            return res;
        }

        public int AddAccount(Accounts acc)
        {
            SqlConnection conn = new SqlConnection("server=DA55CE762AC15EE;database=BankingDB;integrated security=true");

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "insert into AccountInfo values(@accName, @accType, @accBalance, @accIsActive, @accBranch)";

            //cmd.Parameters.AddWithValue("@accNo", acc.accNo);
            cmd.Parameters.AddWithValue("@accName", acc.accName);
            cmd.Parameters.AddWithValue("@accType", acc.accType);
            cmd.Parameters.AddWithValue("@accBalance", acc.accBalance);
            cmd.Parameters.AddWithValue("@accIsActive", acc.accIsActive);
            cmd.Parameters.AddWithValue("@accBranch", acc.accBranch);

            conn.Open();
            int res;
            //try
            //{
            res = cmd.ExecuteNonQuery();
            //} catch
            //{
            //    res = 0;
            //} finally
            //{
            conn.Close();
            //}

            return res;
        }
    }
}