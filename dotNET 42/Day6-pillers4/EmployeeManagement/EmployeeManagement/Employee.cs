using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmployeeManagement
{
    internal class Employee
    {
        public int empNo { get; set; }
        public string empName { get; set; }
        public string empDesignation { get; set; }
        public int empSalary { get; set; }
        public string empIsPermanent { get; set; }
        public int CalculateBonus(int Percentage) 
        {
            return Percentage;
        }
        public string ChangeempDesignation(string newdesignation) 
        {
            return newdesignation.ToString();



        }

    }
}
