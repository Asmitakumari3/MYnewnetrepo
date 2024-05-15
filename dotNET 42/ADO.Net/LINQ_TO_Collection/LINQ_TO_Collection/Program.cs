// See https://aka.ms/new-console-template for more information
//Console.WriteLine("Hello, World!");
using LINQ_TO_Collection;
List<Accounts> accounts = new List<Accounts>()
{
    new Accounts() { accNo = 1, accName = "Bitan", accType = "Savings", accBalance = 1000, accBranch = 10, accIsActive = true },
    new Accounts() { accNo = 2, accName = "KB", accType = "Current", accBalance = 2000, accBranch = 20, accIsActive = true },
    new Accounts() { accNo = 3, accName = "AS", accType = "Savings", accBalance = 3000, accBranch = 10, accIsActive = true },
    new Accounts() { accNo = 4, accName = "MH", accType = "Savings", accBalance = 4000, accBranch = 10, accIsActive = true },
    new Accounts() { accNo = 5, accName = "SM", accType = "Savings", accBalance = 5000, accBranch = 20, accIsActive = true },
    new Accounts() { accNo = 6, accName = "SP", accType = "Current", accBalance = 6000, accBranch = 10, accIsActive = true },
    new Accounts() { accNo = 7, accName = "SH", accType = "Savings", accBalance = 7000, accBranch = 30, accIsActive = true },
    new Accounts() { accNo = 8, accName = "SA", accType = "Savings", accBalance = 8000, accBranch = 10, accIsActive = true },
    new Accounts() { accNo = 9, accName = "RB", accType = "Current", accBalance = 9000, accBranch = 30, accIsActive = true },
    new Accounts() { accNo = 10, accName = "MD", accType = "Current", accBalance = 71000, accBranch = 10, accIsActive = true },

};

//var allAccounts = from a in accounts
//                  select a;
//Console.WriteLine(accounts.Count());

//foreach (var accountInfo in allAccounts)
//{
//    Console.WriteLine(accountInfo.accNo);
//    Console.WriteLine(accountInfo.accName);
//    Console.WriteLine(accountInfo.accType);
//    Console.WriteLine(accountInfo.accBalance);
//    Console.WriteLine("-----------------------");
//}


var accountDetails = from a in accounts
                     orderby a.accType, a.accBalance
                     select a;
foreach (var acc in accountDetails)
{
    Console.WriteLine(acc.accNo + " " + acc.accType + " " + acc.accBalance);
}


//like operator- we use function here

//var acc = from a in accList
          //where a.accName.StartsWith("N")
         // select a;
//foreach (var item in acc)
//{
   // Console.WriteLine(item.accName);
//}


//aggregations
//var totalAccounts = (from a in accList select a.accNo).Count();





