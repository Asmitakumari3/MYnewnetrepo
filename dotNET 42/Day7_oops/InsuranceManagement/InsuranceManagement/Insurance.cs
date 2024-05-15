using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InsuranceManagement
{
    internal abstract class Insurance
    {
        public virtual double CalculateRenewalPremium(int age, double amount)
        {
            return 0;
        }
    }
}
