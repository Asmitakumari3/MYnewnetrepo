using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BankingAPP_OOPS
{
    internal class BankAccount
    {
        public double accBalance { get; set; }
        public virtual double Withdraw(int amount)
        {
            accBalance = accBalance - amount;
            return accBalance;
        }

    }
}
