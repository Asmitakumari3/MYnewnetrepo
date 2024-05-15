using System;
using System.Collections.Generic;

namespace emp_APP_EF;

public partial class EmployeeInfo
{
    public int EmpNo { get; set; }

    public string? EmpName { get; set; }

    public string? EmpDesignation { get; set; }

    public int? EmpSalary { get; set; }

    public bool? EmpIsPermanent { get; set; }
}
