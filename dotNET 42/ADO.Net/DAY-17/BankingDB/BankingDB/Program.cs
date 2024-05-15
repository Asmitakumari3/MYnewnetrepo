using System.Data;
using System.Data.SqlClient;
using System.Transactions;

Console.WriteLine("------------- Banking - Account Management -----------");
Console.WriteLine(" Enter your choice");
Console.WriteLine("1. Create a new Account");
Console.WriteLine("2. Withdraw");
Console.WriteLine("3. Deposit");
Console.WriteLine("4. Delete an Account");
Console.WriteLine("5. Check Account Balance");
int choice = Convert.ToInt32(Console.ReadLine());

SqlConnection con = new SqlConnection("server=DA55CE762AC15EE;database=BankingDB;integrated security=true;");
SqlCommand cmd = new SqlCommand();
cmd.Connection = con;

switch (choice)
{
    case 1:
        //Console.WriteLine("Enter the account number");
        //int new_accNo=Convert.ToInt32(Console.ReadLine());
        Console.WriteLine("Enter the Account holder's name");
        string new_accName = Console.ReadLine();
        Console.WriteLine("Enter the account type");
        string new_accType = Console.ReadLine();
        Console.WriteLine("Enter the accountBalance");
        int new_accBalance = Convert.ToInt32(Console.ReadLine());
        Console.WriteLine("Enter the account is active or not");
        bool new_accIsActive = Convert.ToBoolean(Console.ReadLine());
        Console.WriteLine("Enter the account branch");
        int new_accBranch = Convert.ToInt32(Console.ReadLine());

        cmd.CommandText = "insert into AccountInfo values(@accName,@accType,@accBalance,@accIsActive,@accBranch)";

        cmd.Parameters.AddWithValue("@accName", new_accName);
        cmd.Parameters.AddWithValue("@accType", new_accType);
        cmd.Parameters.AddWithValue("@accBalance", new_accBalance);
        cmd.Parameters.AddWithValue("@accisActive", new_accIsActive);
        cmd.Parameters.AddWithValue("@accBranch", new_accBranch);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Console.WriteLine("Account Created Successfully");
        break;

    case 2:
        Console.WriteLine("Enter the account number ");
        int w_accNo = Convert.ToInt32(Console.ReadLine());
        Console.WriteLine("Enter the amount you wish to withdraw");
        int w_amt = Convert.ToInt32(Console.ReadLine());
        cmd.CommandText = "update AccountInfo set accBalance=accBalance-@amt where accNo=@accNo";
        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("@accNo", w_accNo);
        cmd.Parameters.AddWithValue("@amt", w_amt);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Console.WriteLine("Amount Withdrawn Successfully");
        break;

    case 3:
        Console.WriteLine("Enter the account number ");
        int d_accNo = Convert.ToInt32(Console.ReadLine());
        Console.WriteLine("Enter the amount you wish to withdraw");
        int d_amt = Convert.ToInt32(Console.ReadLine());
        cmd.CommandText = "update AccountInfo set accBalance=accBalance+@amt where accNo=@accNo";
        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("@accNo", d_accNo);
        cmd.Parameters.AddWithValue("@amt", d_amt);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Console.WriteLine("Amount Deposited Successfully");
        break;

    case 5:
        Console.WriteLine("Enter the account number ");
        int del_accNo = Convert.ToInt32(Console.ReadLine());
        cmd.CommandText = "delete from AccountInfo where accNo=@accNo";
        cmd.Parameters.Clear();
        cmd.Parameters.AddWithValue("@accNo", del_accNo);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Console.WriteLine("Account Deleted Successfully");
        break;
    default:
        break;
