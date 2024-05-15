using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace productAPI_EF.db;

public partial class ProductsDbContext : DbContext
{
    public ProductsDbContext()
    {
    }

    public ProductsDbContext(DbContextOptions<ProductsDbContext> options)
        : base(options)
    {
    }

    public virtual DbSet<CustomerDetail> CustomerDetails { get; set; }

    public virtual DbSet<TablProductDetail> TablProductDetails { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("server=DA55CE762AC15EE; database=ProductsDB; integrated security=true;TrustServerCertificate=true");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<CustomerDetail>(entity =>
        {
            entity.HasKey(e => e.CId).HasName("PK__customer__D830D457B4F78DF1");

            entity.ToTable("customerDetails");

            entity.Property(e => e.CId)
                .ValueGeneratedNever()
                .HasColumnName("cID");
            entity.Property(e => e.CCity)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("cCity");
            entity.Property(e => e.CIsActive).HasColumnName("cIsActive");
            entity.Property(e => e.Cname)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("CName");
            entity.Property(e => e.CwalletBalance).HasColumnName("CWalletBalance");
        });

        modelBuilder.Entity<TablProductDetail>(entity =>
        {
            entity.HasKey(e => e.PId).HasName("PK__tabl_pro__DD36D562221B438B");

            entity.ToTable("tabl_productDetails");

            entity.Property(e => e.PId)
                .ValueGeneratedNever()
                .HasColumnName("pId");
            entity.Property(e => e.PAvailableQty).HasColumnName("pAvailableQty");
            entity.Property(e => e.PCategory)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("pCategory");
            entity.Property(e => e.PInStock).HasColumnName("pInStock");
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
