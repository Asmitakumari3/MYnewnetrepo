using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Interface_demo
{
    internal interface IEmployee
    {


        string GetEmployeeDetails(int empNo);
        int AddNewEmployee(string newEmpName);
        int updateEmployee(int empNo, string newName);
        int DeleteEmployee(int empNo);
        string AssignTask(string taskName, int  empNo);
    }
}
