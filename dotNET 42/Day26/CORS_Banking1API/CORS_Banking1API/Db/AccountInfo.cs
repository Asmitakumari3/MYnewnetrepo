using System;
using System.Collections.Generic;

namespace CORS_Banking1API.Db;

public partial class AccountInfo
{
    public int AccNo { get; set; }

    public string AccName { get; set; } = null!;

    public string AccType { get; set; } = null!;

    public long AccBalance { get; set; }

    public bool AccIsActive { get; set; }

    public int AccBranch { get; set; }
}
