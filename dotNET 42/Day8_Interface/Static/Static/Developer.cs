using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Static
{
    internal class Developer : EmployeeInfo
    {
        static int sv_autoDeveloperNo = 900;
        public Developer(string p_empname, string p_empdesignation) : base(p_empname, p_empdesignation)
        {
            sv_autoDeveloperNo = sv_autoDeveloperNo + 1;
            empNo = (p_empdesination.Substring(0, 2) + sv_autoDeveloperNo).ToUpper();

        }

    }
}
