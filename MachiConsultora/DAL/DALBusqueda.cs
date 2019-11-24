using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BI;
using SL.Bitacora;
using SL.Excepciones;

namespace DAL
{
    public class DALBusqueda
    {
        MachiConsultoraVFEntities contexto = new MachiConsultoraVFEntities();

        public List<ClsBusqueda> obtenerBusquedas()
        {

            List<ClsBusqueda> listadoBusqueda = new List<ClsBusqueda>();
            ClsBusqueda oBusqueda;

            try
            {

                //CONSULTA TRAIGO TODOS LOS EVENTOS DE LA TABLA BITACORA
                var eventosBusaqueda = from d in contexto.Busqueda
                                      orderby (d.Id_Busqueda) descending
                                      select d;

                IEnumerator<Busqueda> enu = eventosBusaqueda.GetEnumerator();
                while (enu.MoveNext())
                {
                    oBusqueda = new ClsBusqueda();
                    oBusqueda.Id_Busqueda = enu.Current.Id_Busqueda;
                    oBusqueda.FechaPublicacion = enu.Current.FechaPublicacion;
                    oBusqueda.Id_Puesto = enu.Current.Id_Puesto;
                    oBusqueda.Descripcion = enu.Current.Descripcion;
                    oBusqueda.Referencia = enu.Current.Referencia;

                    listadoBusqueda.Add(oBusqueda);
                }
       
        
    }
            catch (Exception ex)
            {

                throw ex;
            }

            return listadoBusqueda;
        }

        public void altaBusqueda(ClsBusqueda oBusqueda)
        {
            Busqueda oTblBusqueda;
            try
            {
                oTblBusqueda = new Busqueda();
                oTblBusqueda.FechaPublicacion = oBusqueda.FechaPublicacion;
                oTblBusqueda.Id_Busqueda = oBusqueda.Id_Busqueda;
                oTblBusqueda.Id_Puesto = oBusqueda.Id_Puesto;
                oTblBusqueda.Descripcion = oBusqueda.Descripcion;
                oTblBusqueda.Referencia = oBusqueda.Referencia;
                oTblBusqueda.Activa = true;

                contexto.Busqueda.Add(oTblBusqueda);
                contexto.SaveChanges();
            }
            catch (Exception ex)
            {
                DalExcepcion oDExcepcion = new DalExcepcion(ex.InnerException.Message);
                throw oDExcepcion;
            }
        }


        public ClsBusqueda obtenerBusquedas(int pValor)
        {
            ClsBusqueda oBusqueda = new ClsBusqueda();

            try
            {
                var _catProd = contexto.Busqueda.First(m => m.Id_Busqueda == pValor);
                //var _usuBusq = contexto.Usua.First(m => m.Id_Busqueda == pValor);
                oBusqueda.Id_Busqueda = _catProd.Id_Busqueda;
                
            }
            catch (Exception ex)
            {
                DalExcepcion oDExcepcion = new DalExcepcion(ex.InnerException.Message);
                throw oDExcepcion;
            }

            return oBusqueda;
        }

    }
}
