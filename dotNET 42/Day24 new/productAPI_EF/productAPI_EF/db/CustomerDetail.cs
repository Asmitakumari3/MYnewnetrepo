using System;
using System.Collections.Generic;

namespace productAPI_EF.db;

public partial class CustomerDetail
{
    public int CId { get; set; }

    public string? Cname { get; set; }

    public string? CCity { get; set; }

    public double? CwalletBalance { get; set; }

    public bool? CIsActive { get; set; }
}
