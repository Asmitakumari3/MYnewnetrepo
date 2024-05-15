using System;
using System.Collections.Generic;

namespace Milestone4Q1WebApplication1.db;

public partial class Product
{
    public int PId { get; set; }

    public string? PName { get; set; }

    public double? PPrice { get; set; }

    public int? PAvailableQty { get; set; }

    public string? PDescription { get; set; }

    public bool? PIsInStock { get; set; }

    public virtual ICollection<Order> Orders { get; set; } = new List<Order>();
}
