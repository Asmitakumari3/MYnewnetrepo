using System;
using System.Collections.Generic;

namespace demo2;

public partial class BranchInfo
{
    public int BranchNo { get; set; }

    public string? BranchName { get; set; }

    public string? BranchLocation { get; set; }

    public string? BranchEmail { get; set; }

    public virtual ICollection<AccountsInfo> AccountsInfos { get; set; } = new List<AccountsInfo>();
}
