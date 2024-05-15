using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace LINQ1_SP.db;

public partial class InsuranceDb2SpContext : DbContext
{
    public InsuranceDb2SpContext()
    {
    }

    public InsuranceDb2SpContext(DbContextOptions<InsuranceDb2SpContext> options)
        : base(options)
    {
    }

    public virtual DbSet<TablPolicyDetail> TablPolicyDetails { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("server=DA55CE762AC15EE;database=InsuranceDB2_SP;integrated security=true;TrustServerCertificate=true");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<TablPolicyDetail>(entity =>
        {
            entity.HasKey(e => e.PolicyNo).HasName("PK__tabl_pol__78E1E82273F8448A");

            entity.ToTable("tabl_policyDetails");

            entity.Property(e => e.PolicyNo)
                .ValueGeneratedNever()
                .HasColumnName("policyNo");
            entity.Property(e => e.PolicyName)
                .HasMaxLength(30)
                .IsUnicode(false)
                .HasColumnName("policyName");
            entity.Property(e => e.PolicyPremium).HasColumnName("policyPremium");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
