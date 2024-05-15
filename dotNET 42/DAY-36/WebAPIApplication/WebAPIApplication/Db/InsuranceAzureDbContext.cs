using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace WebAPIApplication.Db;

public partial class InsuranceAzureDbContext : DbContext
{
    public InsuranceAzureDbContext()
    {
    }

    public InsuranceAzureDbContext(DbContextOptions<InsuranceAzureDbContext> options)
        : base(options)
    {
    }

    public virtual DbSet<CustomerPolicy> CustomerPolicies { get; set; }

    public virtual DbSet<Product1> Product1s { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=tcp:asmitakserver.database.windows.net,1433;Initial Catalog=insuranceAzureDB;Persist Security Info=False;User ID=asmitaadmin;Password=ashutosh!0;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<CustomerPolicy>(entity =>
        {
            entity.HasKey(e => e.CId).HasName("PK__customer__D830D4778B6C6A54");

            entity.ToTable("customerPolicies");

            entity.Property(e => e.CId)
                .ValueGeneratedNever()
                .HasColumnName("cId");
            entity.Property(e => e.CName)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("cName");
            entity.Property(e => e.InsuranceAmt)
                .HasColumnType("decimal(10, 2)")
                .HasColumnName("insuranceAmt");
            entity.Property(e => e.InsuranceStatus)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("insuranceStatus");
            entity.Property(e => e.PId).HasColumnName("pId");
        });

        modelBuilder.Entity<Product1>(entity =>
        {
            entity.HasKey(e => e.Pid).HasName("PK__product1__DD37D91A9C16E5CA");

            entity.ToTable("product1");

            entity.Property(e => e.Pid)
                .ValueGeneratedNever()
                .HasColumnName("pid");
            entity.Property(e => e.Pimage)
                .IsUnicode(false)
                .HasColumnName("pimage");
            entity.Property(e => e.Pname)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("pname");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
