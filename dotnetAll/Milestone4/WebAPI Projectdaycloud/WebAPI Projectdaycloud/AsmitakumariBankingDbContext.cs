using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace WebAPI_Projectdaycloud;

public partial class AsmitakumariBankingDbContext : DbContext
{
    public AsmitakumariBankingDbContext()
    {
    }

    public AsmitakumariBankingDbContext(DbContextOptions<AsmitakumariBankingDbContext> options)
        : base(options)
    {
    }

    public virtual DbSet<AccountInfo> AccountInfos { get; set; }

    public virtual DbSet<BranchInfo> BranchInfos { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=tcp:asmitakumariserver.database.windows.net,1433;Initial Catalog=asmitakumari_bankingDB;Persist Security Info=False;User ID=Asmitakumari;Password=ca#2CP@1;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<AccountInfo>(entity =>
        {
            entity.HasKey(e => e.AccNo).HasName("PK__accountI__A4719705B55D7450");

            entity.ToTable("accountInfo");

            entity.Property(e => e.AccNo)
                .ValueGeneratedNever()
                .HasColumnName("accNo");
            entity.Property(e => e.AccName)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("accName");
            entity.Property(e => e.AccType)
                .HasMaxLength(80)
                .IsUnicode(false)
                .HasColumnName("accType");
        });

        modelBuilder.Entity<BranchInfo>(entity =>
        {
            entity.HasKey(e => e.BranchId).HasName("PK__branchIn__751EBD5FB888011B");

            entity.ToTable("branchInfo");

            entity.Property(e => e.BranchId)
                .ValueGeneratedNever()
                .HasColumnName("branchId");
            entity.Property(e => e.BranchLocation)
                .HasMaxLength(70)
                .IsUnicode(false)
                .HasColumnName("branchLocation");
            entity.Property(e => e.BranchName)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("branchName");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
