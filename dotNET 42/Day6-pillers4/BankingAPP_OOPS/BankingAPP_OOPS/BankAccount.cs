using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BankingAPP_OOPS
{
    internal class BankAccount
    {

    

    
        public int accountNo { get; set; }
        public string accountFirstName { get; set; }
        public string accountLastName { get; set; }

        public double accountBalance { get; set; }
        public string accountIsActive{ get; set; }
        //public int MyProperty { get; set; }


        public double withdraw(int amt)

        {
            accountBalance = accountBalance - amount;

            return accBalance;
        }
        public double Deposit(int amount)
        {
            accBalance = accBalance - amount;
            return accBalance;



        }

    }
}



