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

        public ActionResult Index()
        {
            return View();
        }

        

          [HttpPost] public ActionResult create (int idVideo)
          {
        List<SqlParameter> Parametros = new List<SqlParameter>();
        Parametros.Add(new SqlParameter("@idVideo", idVideo));

          }

    }
}
