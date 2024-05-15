using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace empManagement_MVC.Models;

public partial class EmpDbDataAnnotationContext : DbContext
{
    public EmpDbDataAnnotationContext()
    {
    }

    public EmpDbDataAnnotationContext(DbContextOptions<EmpDbDataAnnotationContext> options)
        : base(options)
    {
    }

    public virtual DbSet<EmpInfo> EmpInfos { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=DA55CE762AC15EE;database=empDB_DataAnnotation;integrated security=true;TrustServerCertificate=True");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<EmpInfo>(entity =>
        {
            entity.HasKey(e => e.EmpNo).HasName("PK__empInfo__AFB33592060898B6");

            entity.ToTable("empInfo");

            entity.Property(e => e.EmpNo)
                .ValueGeneratedNever()
                .HasColumnName("empNo");
            entity.Property(e => e.EmpDesigantion)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("empDesigantion");
            entity.Property(e => e.EmpEmail)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("empEmail");
            entity.Property(e => e.EmpIsPermenant).HasColumnName("empIsPermenant");
            entity.Property(e => e.EmpName)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("empName");
            entity.Property(e => e.EmpSalary).HasColumnName("empSalary");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
