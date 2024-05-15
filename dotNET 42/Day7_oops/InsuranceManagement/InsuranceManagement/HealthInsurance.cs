using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InsuranceManagement
{
    internal class HealthInsurance: Insurance
    {
        public override double CalculateRenewalPremium(int age, double amount)
        {
            return base.CalculateRenewalPremium(age, amount);

        }
    }
}
