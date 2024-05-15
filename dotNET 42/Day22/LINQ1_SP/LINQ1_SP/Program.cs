// See https://aka.ms/new-console-template for more information
//Console.WriteLine("Hello, World!");

using System;

using LINQ1_SP.db;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Caching.Memory;

InsuranceDb2SpContext db = new InsuranceDb2SpContext ();
//var data = db.Database.ExecuteSqlRaw("proc_allPolicies");
#region- sp1
//var data = db.TablPolicyDetails.FromSql($"execute proc_get_all_policies");
//foreach (var item in data)
//{
//    Console.WriteLine(item.PolicyNo);
//    Console.WriteLine(item.PolicyName);
//    Console.WriteLine(item.PolicyPremium);
//}

#endregion
#region-sp2
//Console.WriteLine("Enter Policy No");
//int policyNo = Convert.ToInt32(Console.ReadLine());
//var data = db.TablPolicyDetails.FromSql($"execute proc_get_by_policyNo {policyNo}");
//int count = 0;
//foreach (var item in data)
//{

//    count++;
//    Console.WriteLine(item.PolicyNo);
//    Console.WriteLine(item.PolicyName);
//    Console.WriteLine(item.PolicyPremium);
//}
//if (count == 0)
//{
//    Console.WriteLine("Policy Not Found");
//}

# endregion


//Console.Write("\nEnter policy name: ");
//string name = Console.ReadLine();
//Console.WriteLine("proc_get_by_policyName");
//var data3 = db.TablPolicyDetails.FromSql($"exec proc_get_by_policyName {name}");

//foreach ( var item in data3)
//{
//    Console.WriteLine($"{item.PolicyNo}\t{item.PolicyName}\t{item.PolicyPremium}");
//}


//Console.Write("\nEnter lower bound of policy premium: ");
//double lwr = Convert.ToDouble(Console.ReadLine());
//Console.Write("\nEnter upper bound of policy premium: ");
//double upr = Convert.ToDouble(Console.ReadLine());
//Console.WriteLine("proc_get_policy_in_range");

//var data4 = db.TablPolicyDetails.FromSql($"exec proc_get_policy_in_range {lwr} {upr}");

//foreach (var item in data3)
//{
//    Console.WriteLine($"{item.PolicyNo}\t{item.PolicyName}\t{item.PolicyPremium}");
//}


//Console.Write("\nEnter policy name: ");
//string name = Console.ReadLine();
//Console.WriteLine("proc_get_by_policyName");
//var data3 = db.TablPolicyDetails.FromSql($"exec proc_get_by_policyName {name}");

//foreach ( var item in data3)
//{
//    Console.WriteLine($"{item.PolicyNo}\t{item.PolicyName}\t{item.PolicyPremium}");
//}


//Console.Write("\nEnter lower bound of policy premium: ");
//double lwr = Convert.ToDouble(Console.ReadLine());
//Console.Write("\nEnter upper bound of policy premium: ");
//double upr = Convert.ToDouble(Console.ReadLine());
//Console.WriteLine("proc_get_policy_in_range");

//var data4 = db.TablPolicyDetails.FromSql($"exec proc_get_policy_in_range {lwr} {upr}");

//foreach (var item in data3)
//{
//    Console.WriteLine($"{item.PolicyNo}\t{item.PolicyName}\t{item.PolicyPremium}");
//}


Console.WriteLine("\nproc_add_policy");
Console.Write("Enter policy number: ");
int no2 = Convert.ToInt32(Console.ReadLine());
Console.Write("Enter policy name: ");
string name2 = Console.ReadLine();
Console.Write("Enter policy premium: ");
double prem2 = Convert.ToDouble(Console.ReadLine());

var data4 = db.TablPolicyDetails.FromSql($"exec proc_add_policy {no2}, {name2}, {prem2}");

//foreach (var item in data4)
//{
//    Console.WriteLine($"{item.PolicyNo}\t{item.PolicyName}\t{item.PolicyPremium}");
//}





