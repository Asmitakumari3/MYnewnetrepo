using System;
using System.Collections.Generic;

namespace productAPI_EF.db;

public partial class TablProductDetail
{
    public int PId { get; set; }

    public string? PName { get; set; }

    public string? PCategory { get; set; }

    public double? PPrice { get; set; }

    public bool? PInStock { get; set; }

    public int? PAvailableQty { get; set; }
}
