using System;
using System.Collections.Generic;

namespace api1app.db;

public partial class Product
{
    public int PId { get; set; }

    public string? PName { get; set; }

    public double? PPrice { get; set; }

    public int? PAvailbleQty { get; set; }

    public bool? PIsInStock { get; set; }

    public double? PDicountPercentage { get; set; }

    public string? POfferCode { get; set; }

    public double? POfferCodePercentage { get; set; }

    public virtual ICollection<TablOrderDetail> TablOrderDetails { get; set; } = new List<TablOrderDetail>();
}
