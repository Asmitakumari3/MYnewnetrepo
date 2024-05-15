using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Milestone3
{
    public class Scientific : Calculation
    {
        public override decimal Add(params decimal[] numbers)
        {
            if (numbers.Length != 2)
                throw new ArgumentException("Exactly two numbers must be provided.");
            decimal sum = numbers[0] + numbers[1];
            return sum * 1.2m;
        }
    }
}

