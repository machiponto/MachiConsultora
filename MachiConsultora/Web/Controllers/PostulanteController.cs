using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BLL;
using BI;
using SL.Bitacora;
using SL.Excepciones;

namespace Web.Controllers
{
    public class PostulanteController : Controller
    {
        INEGGestionPostulante intNegGestionPostulante = new NEGGestionPostulante();
        INEGServiceLayer interfazServiceLayer = new NEGServiceLayer();

        public ActionResult evaluarPostulantes()
        {
            this.inicializar_contenido();

            List<ClsBusqueda> listadoBusquedas = new List<ClsBusqueda>();

            try
            {

                listadoBusquedas = intNegGestionPostulante.obtenerBusquedas();


            }
            catch (Exception ex)
            {
                WebExcepcion oWExcepcion = new WebExcepcion(ex.Message);
                interfazServiceLayer.registrarEvento(oWExcepcion);
            }

            return View(listadoBusquedas);
        }


        public ActionResult buscarPostulantes(int pValor)
        {
            List<ClsBusqueda> listadoEventos = new List<ClsBusqueda>();

            try
            {
                if (pValor != 0)
                {
                    listadoEventos = intNegGestionPostulante.obtenerBusquedas(pValor);
                }
            }
            catch (Exception ex)
            {
                WebExcepcion oWExcepcion = new WebExcepcion(ex.Message);
                interfazServiceLayer.registrarEvento(oWExcepcion);
            }

            return View("evaluarPostulantes", listadoEventos);
        }


        public void inicializar_contenido()
        {
            Session["Busqueda"] = Web.Code52.i18n.Language.Busqueda;
            Session["FechaPublicacion"] = Web.Code52.i18n.Language.FechaPublicacion;
            Session["Descripcion"] = Web.Code52.i18n.Language.Descripcion;
            Session["Referencia"] = Web.Code52.i18n.Language.Referencia;
            //Session["Descuento"] = Web.Code52.i18n.Language.Descuento;
            //Session["CostoConDescuento"] = Web.Code52.i18n.Language.CostoConDescuento;

        }

    }
}
