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
    
    public partial class Sucursal
    {
        public Sucursal()
        {
            this.ComprobanteCabecera = new HashSet<ComprobanteCabecera>();
        }
    
        public int idSucursal { get; set; }
        public string direccion { get; set; }
        public string telefono { get; set; }
        public string fax { get; set; }
        public int idEmpresa { get; set; }
    
        public virtual ICollection<ComprobanteCabecera> ComprobanteCabecera { get; set; }
        public virtual Empresa Empresa { get; set; }
    }
}
