using System;
using System.Collections.Generic;

namespace api1app.db;

public partial class TablCustomerDetail
{
    public int CId { get; set; }

    public string? CName { get; set; }

    public string? CCity { get; set; }

    public double? CWalletBalance { get; set; }

    public string? CEmail { get; set; }

    public virtual ICollection<TablOrderDetail> TablOrderDetails { get; set; } = new List<TablOrderDetail>();
}
