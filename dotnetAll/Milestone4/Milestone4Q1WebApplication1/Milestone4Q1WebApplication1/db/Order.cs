using System;
using System.Collections.Generic;

namespace Milestone4Q1WebApplication1.db;

public partial class Order
{
    public int OId { get; set; }

    public int? CId { get; set; }

    public int? PId { get; set; }

    public string? OStatus { get; set; }

    public virtual Customer? CIdNavigation { get; set; }

    public virtual Product? PIdNavigation { get; set; }
}
