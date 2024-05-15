using System;
using System.Collections.Generic;

namespace empManagement_MVC.Models;

public partial class EmpInfo
{
    public int EmpNo { get; set; }

    public string EmpName { get; set; } = null!;

    public string EmpDesigantion { get; set; } = null!;

    public int EmpSalary { get; set; }

    public bool EmpIsPermenant { get; set; }

    public string EmpEmail { get; set; } = null!;
}
