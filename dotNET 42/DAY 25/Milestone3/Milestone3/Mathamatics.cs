using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Milestone3
{
    public class Mathematics : Calculation
    {
        public override decimal Add(params decimal[] numbers)
        {
            if (numbers.Length < 2)
                throw new ArgumentException("At least two numbers must be provided.");
            decimal sum = 0;
            foreach (decimal number in numbers)
            {
                sum += number;
            }
            return sum;
        }
    }
}
