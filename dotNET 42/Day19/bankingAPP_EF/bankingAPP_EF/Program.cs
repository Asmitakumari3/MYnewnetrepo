using bankingAPP_EF;
using bankingAPP_EF.DatabaseFiles;
 
BankingDbEfContext db = new BankingDbEfContext();
#region joins
var accDetails = from a in db.AccountsInfos
                 join b in db.BranchInfos on a.AccBranch equals b.BranchNo
                 select new
                 {
                     a,
                     b
                 };
  foreach (var acc in accDetails)
{
    Console.WriteLine(acc.a.AccNo);
    Console.WriteLine(acc.b.BranchNo);

}

#endregion


  AccountsInfo newAcc = new AccountsInfo();
{
    AccNo = 105,
    AccName = "Mohsin",
    AccType = "Savings",
    AccBranch = 10,
    AccIsActive = true,
};

db.AccountsInfos.Add(newAcc);
db.SaveChanges();


var savingAcc = from a in db.AccountsInfos
                where a.AccType == "Savings"
                select a;

foreach(var acc in savingAcc)
{
    db.AccountsInfos.Remove(acc);
}

db.SaveChanges();

#endregion




