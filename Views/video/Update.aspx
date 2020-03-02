<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Update</title>
</head>
<body>
    <div>
    <h1>Quieres modifciar un video¿?</h1>
    <h4>Cometiste un error¿? quieres regresar al menu,<a href="http://localhost:4746/"> para eso da click aqui</a></h4>
        <hr />
        <br />
        <form action="/video/Update" method="post">
        <fieldset>

        <legend>Pon el idVideo del video a actualizar</legend>
        <label for="idVideo">idVideo</label>
        <input type="text" name="idVideo" />
            <br />
            <hr />
            <legend>pon los datos que se quedar en el video</legend>
            <label for="idVideo">iVideo</label>
            <input  type="text" name="idVideo"/>

            <label for="titulo">titulo</label>
            <input type="text" name="titulo" />

            <label for="reproducciones">reproducciones</label>
            <input type="text" name="reproducciones" />

            <label for="url">url</label>
            <input type="text" name="url" />
            <br />
            <input type="submit" value="Actualizar Video :D"/>
        </fieldset>
        </form>

    </div>
</body>
</html>
