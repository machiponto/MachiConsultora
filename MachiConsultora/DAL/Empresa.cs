//------------------------------------------------------------------------------
// <auto-generated>
//    Este código se generó a partir de una plantilla.
//
//    Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//    Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class Empresa
    {
        public Empresa()
        {
            this.Sucursal = new HashSet<Sucursal>();
        }
    
        public int idEmpresa { get; set; }
        public string RazonSocial { get; set; }
        public string Descripcion { get; set; }
    
        public virtual ICollection<Sucursal> Sucursal { get; set; }
    }
}
