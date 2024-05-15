using System;
using System.Collections.Generic;

namespace WebAPIApplication.Db;

public partial class CustomerPolicy
{
    public int CId { get; set; }

    public int? PId { get; set; }

    public string? CName { get; set; }

    public decimal? InsuranceAmt { get; set; }

    public string? InsuranceStatus { get; set; }
}
