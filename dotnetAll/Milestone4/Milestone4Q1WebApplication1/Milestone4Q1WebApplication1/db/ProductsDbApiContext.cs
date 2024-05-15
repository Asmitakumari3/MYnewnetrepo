
using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Milestone4Q1WebApplication1.db;

namespace Milestone4Q1WebApplication1.db;

public partial class ProductsDbApiContext : DbContext
{
    public ProductsDbApiContext()
    {
    }

    public ProductsDbApiContext(DbContextOptions<ProductsDbApiContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Customer> Customers { get; set; }

    public virtual DbSet<Order> Orders { get; set; }

    public virtual DbSet<Product> Products { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("server=DA55CE762AC15EE; database=ProductsDB_API; integrated security=true; TrustServerCertificate=true");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Customer>(entity =>
        {
            entity.HasKey(e => e.CId).HasName("PK__customer__D830D477498CFB76");

            entity.ToTable("customers");

            entity.Property(e => e.CId)
                .ValueGeneratedNever()
                .HasColumnName("cId");
            entity.Property(e => e.CAddress)
                .HasMaxLength(30)
                .IsUnicode(false)
                .HasColumnName("cAddress");
            entity.Property(e => e.CName)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("cName");
            entity.Property(e => e.CWalletBalance).HasColumnName("cWalletBalance");
        });

        modelBuilder.Entity<Order>(entity =>
        {
            entity.HasKey(e => e.OId).HasName("PK__orders__C2FECB3BF6B54294");

            entity.ToTable("orders");

            entity.Property(e => e.OId)
                .ValueGeneratedNever()
                .HasColumnName("oId");
            entity.Property(e => e.CId).HasColumnName("cId");
            entity.Property(e => e.OStatus)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("oStatus");
            entity.Property(e => e.PId).HasColumnName("pId");

            entity.HasOne(d => d.CIdNavigation).WithMany(p => p.Orders)
                .HasForeignKey(d => d.CId)
                .HasConstraintName("FK__orders__cId__3B75D760");

            entity.HasOne(d => d.PIdNavigation).WithMany(p => p.Orders)
                .HasForeignKey(d => d.PId)
                .HasConstraintName("FK__orders__pId__3C69FB99");
        });

        modelBuilder.Entity<Product>(entity =>
        {
            entity.HasKey(e => e.PId).HasName("PK__products__DD36D562298B79B3");

            entity.ToTable("products");

            entity.Property(e => e.PId)
                .ValueGeneratedNever()
                .HasColumnName("pId");
            entity.Property(e => e.PAvailableQty).HasColumnName("pAvailableQty");
            entity.Property(e => e.PDescription)
                .HasMaxLength(30)
                .IsUnicode(false)
                .HasColumnName("pDescription");
            entity.Property(e => e.PIsInStock).HasColumnName("pIsInStock");
            entity.Property(e => e.PName)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("pName");
            entity.Property(e => e.PPrice).HasColumnName("pPrice");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
