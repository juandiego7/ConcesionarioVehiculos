<%-- 
    Document   : registro
    Created on : 20/02/2017, 05:47:29 PM
    Author     : jnda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" type="image/png" href="http://www.e02.es/cubic/datos/docs/doc_368/logo_doc_368_creacion_logo_imagen_visual_corporativa_05_marcel_ico.png" />
        <link rel="stylesheet" href="css/registroStyle.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Clientes</title>
    </head>
    <body>
        <div id="body">
            <nav id="menu">
                <jsp:include page="menu.jsp"></jsp:include>
            </nav>
            <div class="contenido">
                <h1>Registro Clientes</h1>
                <hr color="black"/>
                <p id="pa">Todos los campos son obligatorios</p>
                <hr color="black"/>
                <form action="concesionarioServlet?action=registroCts" method="post">
                    <table>
                        <tr>
                            <th><label><b>Identificación:</b></label></th>
                            <th>
                                <input type="text" placeholder="ingrese identificación" class="it" name="id" required=""/>
                            </th>
                        </tr>
                        <tr>
                            <th><label><b>Nombre:</b></label></th>
                            <th>
                                <input type="text" placeholder="ingrese nombre" class="it" name="nombre" required=""/>
                            </th>
                        </tr>
                        <tr>
                            <th><label><b>Apellidos:</b></label></th>
                            <th>
                                <input type="text" placeholder="ingrese apellidos" class="it" name="apellidos" required=""/>
                            </th>
                        </tr>
                        <tr>
                            <th><label><b>Email:</b></label></th>
                            <th>
                                <input type="email" placeholder="ingrese correo" class="it" name="email" required=""/>
                            </th>
                        </tr>
                        <tr>
                            <th><label><b>Teléfono</b></label></th>
                            <th>
                                <input type="text" placeholder="ingrese teléfono" class="it" name="tel" required=""/>
                            </th>
                        </tr>
                    </table> 
                    <input class="is" type="submit" name="action" value="Insert"> 
                    <input class="is" type="reset" name="action" value="Reset">           
                </form> 
                <br>
            </div>
            <footer id="fter">
                <p>Trabajo realizado para la materia Arquitectura de Software</p>
                <p>Código fuente: <a href="">git</a></p>
            </footer>
        </div>
    </body>
</html>
