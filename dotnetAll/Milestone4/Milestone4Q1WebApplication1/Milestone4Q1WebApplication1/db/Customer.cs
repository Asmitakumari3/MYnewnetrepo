using System;
using System.Collections.Generic;

namespace Milestone4Q1WebApplication1.db;

public partial class Customer
{
    public int CId { get; set; }

    public string? CName { get; set; }

    public string? CAddress { get; set; }

    public double? CWalletBalance { get; set; }

    public virtual ICollection<Order> Orders { get; set; } = new List<Order>();
}
