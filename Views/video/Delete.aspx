<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Delete</title>
</head>
<body>
    <div>
     <h1>seguro quieres eliminarlo del fas de el internet¿? :c</h1>
     <h4>Cometiste un error¿? quieres regresar al menu,<a href="http://localhost:4746/"> para eso da click aqui</a></h4>
        <br />
        <h4>  el numero de videos subidos es <%: ((System.Data.DataTable)ViewData["video"]).Rows.Count %></h4>
        <br />
        <form action="/video/Delete" method=post>
        <fieldset>
        <legend>si es asi pon el idVideo del video a elimnar aqui:</legend>

        <label for="idVideo">idVideo</label>
        <input type="text" name="idVideo" />
        <br />
        <input type="submit" value="Eliminar Video :c" />
        </fieldset>
        </form>
    </div>
</body>
</html>
