using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace api1app.db;

public partial class ShopingDbApiContext : DbContext
{
    public ShopingDbApiContext()
    {
    }

    public ShopingDbApiContext(DbContextOptions<ShopingDbApiContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Product> Products { get; set; }

    public virtual DbSet<TablCustomerDetail> TablCustomerDetails { get; set; }

    public virtual DbSet<TablOrderDetail> TablOrderDetails { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("server=DA55CE762AC15EE; database=shopingDB_API; integrated security=true;TrustServerCertificate=true");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Product>(entity =>
        {
            entity.HasKey(e => e.PId).HasName("PK__products__DD36D5627D8BD498");

            entity.ToTable("products");

            entity.Property(e => e.PId)
                .ValueGeneratedNever()
                .HasColumnName("pId");
            entity.Property(e => e.PAvailbleQty).HasColumnName("pAvailbleQty");
            entity.Property(e => e.PDicountPercentage).HasColumnName("pDicountPercentage");
            entity.Property(e => e.PIsInStock).HasColumnName("pIsInStock");
            entity.Property(e => e.PName)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("pName");
            entity.Property(e => e.POfferCode)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("pOfferCode");
            entity.Property(e => e.POfferCodePercentage).HasColumnName("pOfferCodePercentage");
            entity.Property(e => e.PPrice).HasColumnName("pPrice");
        });

        modelBuilder.Entity<TablCustomerDetail>(entity =>
        {
            entity.HasKey(e => e.CId).HasName("PK__tabl_cus__D830D4777D31FDE5");

            entity.ToTable("tabl_customerDetails");

            entity.Property(e => e.CId)
                .ValueGeneratedNever()
                .HasColumnName("cId");
            entity.Property(e => e.CCity)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("cCity");
            entity.Property(e => e.CEmail)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("cEmail");
            entity.Property(e => e.CName)
                .HasMaxLength(30)
                .IsUnicode(false)
                .HasColumnName("cName");
            entity.Property(e => e.CWalletBalance).HasColumnName("cWalletBalance");
        });

        modelBuilder.Entity<TablOrderDetail>(entity =>
        {
            entity.HasKey(e => e.OId).HasName("PK__tabl_ord__C2FECB3B6004ECCF");

            entity.ToTable("tabl_orderDetails");

            entity.Property(e => e.OId)
                .ValueGeneratedNever()
                .HasColumnName("oId");
            entity.Property(e => e.CId).HasColumnName("cId");
            entity.Property(e => e.OProductId).HasColumnName("oProductId");
            entity.Property(e => e.OrderTotal).HasColumnName("orderTotal");

            entity.HasOne(d => d.CIdNavigation).WithMany(p => p.TablOrderDetails)
                .HasForeignKey(d => d.CId)
                .HasConstraintName("FK__tabl_orderD__cId__3C69FB99");

            entity.HasOne(d => d.OProduct).WithMany(p => p.TablOrderDetails)
                .HasForeignKey(d => d.OProductId)
                .HasConstraintName("FK__tabl_orde__oProd__3B75D760");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
