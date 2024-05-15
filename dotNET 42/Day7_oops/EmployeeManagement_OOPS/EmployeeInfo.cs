using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmployeeManagement_OOPS
{
    internal class EmployeeInfo
    {
        public int availableleave { get; set; } = 30;
        public virtual int applyleaves( int days)
        {

        if(days < 1) 
            {
                throw new Exception("Minimum 1 day of Leave can be approved");
            }
           return base.applyLeaves(days);
        }

    }
}
