using System;
using System.Collections.Generic;

namespace api1app.db;

public partial class TablOrderDetail
{
    public int OId { get; set; }

    public int? OProductId { get; set; }

    public int? CId { get; set; }

    public double? OrderTotal { get; set; }

    public virtual TablCustomerDetail? CIdNavigation { get; set; }

    public virtual Product? OProduct { get; set; }
}
