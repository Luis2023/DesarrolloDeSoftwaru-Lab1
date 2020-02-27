<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Agregar</title>
</head>
<body>
    <div>
    <h1>¿¡quieres agregar un video?</h1>
    <h4>Cometiste un error¿? quieres regresar al menu,<a href="http://localhost:4746/"> para eso da click aqui</a></h4>
    <hr />
    <p style="color:#CC66FF";>asegurate de que  el "idVideo" pongas sea mayor al numero mostrado aqui 
    "<%: ((System.Data.DataTable)ViewData["video"]).Rows.Count %>"</p>
        <hr />

        <h3>seguro quieres eliminarlo del fas de el internet :c</h3>
        <br />
        <form action="/video/Agregar" method=post>
        <fieldset>
        <legend>Pon los datos del video :D</legend>

        <label for="idVideo">idVideo</label>
        <input type="text" name="idVideo" />

        <label for="titulo">titulo</label>
        <input type="text" name="titulo" /> 
         
        <label for="reproducciones">reproducciones</label>
        <input type="text" name="reproducciones" /> 

        <label for="url">url</label>
        <input type="text" name="url" /> 
            <br />

        <input type="submit" value="Agregar Video :D" />

        </fieldset>
        </form>


    </div>
</body>
</html>
