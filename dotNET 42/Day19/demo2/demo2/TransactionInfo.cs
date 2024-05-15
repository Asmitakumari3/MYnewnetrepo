using System;
using System.Collections.Generic;

namespace demo2;

public partial class TransactionInfo
{
    public int TrNo { get; set; }

    public int? FromAccNo { get; set; }

    public int? ToAccNo { get; set; }

    public int? Amount { get; set; }

    public DateTime? Datetime { get; set; }

    public virtual AccountsInfo? FromAccNoNavigation { get; set; }

    public virtual AccountsInfo? ToAccNoNavigation { get; set; }
}
