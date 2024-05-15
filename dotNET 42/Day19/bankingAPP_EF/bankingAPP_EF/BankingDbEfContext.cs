using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace bankingAPP_EF;

public partial class BankingDbEfContext : DbContext
{
    public BankingDbEfContext()
    {
    }

    public BankingDbEfContext(DbContextOptions<BankingDbEfContext> options)
        : base(options)
    {
    }

    public virtual DbSet<AccountsInfo> AccountsInfos { get; set; }

    public virtual DbSet<BranchInfo> BranchInfos { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=DA55CE762AC15EE;database=BankingDB_EF;integrated security=true;TrustServerCertificate=True");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<AccountsInfo>(entity =>
        {
            entity.HasKey(e => e.AccNo).HasName("PK__Accounts__A47197055B0B55E9");

            entity.ToTable("AccountsInfo");

            entity.Property(e => e.AccNo)
                .ValueGeneratedNever()
                .HasColumnName("accNo");
            entity.Property(e => e.AccBalance).HasColumnName("accBalance");
            entity.Property(e => e.AccBranch).HasColumnName("accBranch");
            entity.Property(e => e.AccIsActive).HasColumnName("accIsActive");
            entity.Property(e => e.AccName)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("accName");
            entity.Property(e => e.AccType)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("accType");

            entity.HasOne(d => d.AccBranchNavigation).WithMany(p => p.AccountsInfos)
                .HasForeignKey(d => d.AccBranch)
                .HasConstraintName("FK__AccountsI__accBr__398D8EEE");
        });

        modelBuilder.Entity<BranchInfo>(entity =>
        {
            entity.HasKey(e => e.BranchNo).HasName("PK__BranchIn__751EC4A0BDB98A5A");

            entity.ToTable("BranchInfo");

            entity.Property(e => e.BranchNo)
                .ValueGeneratedNever()
                .HasColumnName("branchNo");
            entity.Property(e => e.BranchLocation)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("branchLocation");
            entity.Property(e => e.BranchName)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("branchName");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
