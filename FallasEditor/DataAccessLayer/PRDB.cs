namespace FallasEditor.DataAccessLayer
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class PRDB : DbContext
    {
        public PRDB()
            : base("name=PRDB")
        {
        }

        public virtual DbSet<Falla> Falla { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Falla>()
                .Property(e => e.CodigoFalla)
                .IsUnicode(false);

            modelBuilder.Entity<Falla>()
                .Property(e => e.CategoriaFalla)
                .IsUnicode(false);

            modelBuilder.Entity<Falla>()
                .Property(e => e.DescripcionCategoria)
                .IsUnicode(false);

            modelBuilder.Entity<Falla>()
                .Property(e => e.DescripcionFalla)
                .IsUnicode(false);
        }
    }
}
