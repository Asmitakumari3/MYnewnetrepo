using System;
using System.Collections.Generic;

namespace demo2;

public partial class AccountsInfo
{
    public int AccNo { get; set; }

    public string? AccName { get; set; }

    public string? AccType { get; set; }

    public int? AccBalance { get; set; }

    public bool? AccIsActive { get; set; }

    public int? AccBranch { get; set; }

    public virtual BranchInfo? AccBranchNavigation { get; set; }

    public virtual ICollection<TransactionInfo> TransactionInfoFromAccNoNavigations { get; set; } = new List<TransactionInfo>();

    public virtual ICollection<TransactionInfo> TransactionInfoToAccNoNavigations { get; set; } = new List<TransactionInfo>();
}
