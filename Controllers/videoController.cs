using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using System.Data.SqlClient;
using MVCPlantilla.Utilerias;

namespace MvcPlantilla.Controllers
{
    public class videoController : Controller
    {
        //
        // GET: /video/
        public ActionResult VerVideo()
        {//Consultar videos de la BD
            ViewData["video"] = BaseHelper.ejecutarConsulta(
                "SELECT * FROM video", CommandType.Text);
            return View();
        }
//----------------------------------------------------------------------------------------------------------------------------------------------------------
        public ActionResult Agregar()
        {//Consultar videos de la BD
            ViewData["video"] = BaseHelper.ejecutarConsulta(
                   "SELECT * FROM video", CommandType.Text);
            return View();
        }

        
        //Procesa los datos ingresados a la base
        [HttpPost]
        public ActionResult Agregar(int idVideo,
                                   string titulo,
                                   int reproducciones,
                                   string url)
    {
        //Guardar los datos en la Base
        List<SqlParameter> parametros = new List<SqlParameter>();
        parametros.Add(new SqlParameter("@idVideo", idVideo));
        parametros.Add(new SqlParameter("@titulo", titulo));
        parametros.Add(new SqlParameter("@reproducciones", reproducciones));
        parametros.Add(new SqlParameter("@url", url));

        BaseHelper.ejecutarSentencia("INSERT INTO video " +
                                     "VALUES(@idVideo,@titulo," +
                                     "@reproducciones,@url)",
                                     CommandType.Text,
                                     parametros);


        return View("TuVideoHaSidoSubido");

    }

        public ActionResult TuVideoHaSidoSubido ()
        {
            return View();
        }



        public ActionResult Delete()
        {
            List<SqlParameter>Parametros =new List<SqlParameter>();

            
            
            return View();
        }

       

        

        

          }

    }

