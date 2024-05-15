using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Static
{
    internal class EmployeeInfo
    {
        static int sv_autoEmpNo = 100;

        public int empNo { get; set; }
        public string empName { get; set; }
        public string empDesignation { get; set; }
        public EmployeeInfo(string p_empname, string p_empDesignation)
        {
            empName = empName;
            empDesignation = empDesignation;
            sv_autoEmpNo = sv_autoEmpNo + 1;
            empNo = (p_empDesignation.Substring(0,2) + sv_autoEmpNo)
        }
    }
}
