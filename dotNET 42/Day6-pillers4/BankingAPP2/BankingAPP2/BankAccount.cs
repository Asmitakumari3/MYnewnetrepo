using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BankingAPP2
{
    internal class BankAccount
    {
        public int accNo { get; set; }
        public string accName { get; set; }
        public double accBalance { get; set; }
        public string accType { get; set; }
        public int MyProperty { get; set; }
        

        public   double withdraw(int amount)

        {
            accBalance = accBalance  - amount;

           return accBalance;
        }
        public double Deposit(int amount)
        {
            accBalance = accBalance - amount;
            return accBalance;



        }

    }
}


