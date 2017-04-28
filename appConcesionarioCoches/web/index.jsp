<%-- 
    Document   : index
    Created on : 20/02/2017, 05:47:08 PM
    Author     : jnda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" type="image/png" href="http://www.e02.es/cubic/datos/docs/doc_368/logo_doc_368_creacion_logo_imagen_visual_corporativa_05_marcel_ico.png" />
        <link rel="stylesheet" href="css/indexStyle.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
    </head>
    <body>
        <div id="body">
            <nav id="menu">
                <jsp:include page="menu.jsp"></jsp:include>
                </nav>
                <form id="contenido" >
                    <h2><a id="tt" href="concesionarioServlet?action=listarIndex">Mostrar coches</a></h2>
                    <hr color="black"/>
                    <table id="tbl">
                        <thead id="thb"
                               <tr>
                                <th>Imagen</th>
                                <th>Descripción</th>
                            </tr>
                        </thead>
                        <tbody id="thb">
                        <c:forEach var="c" items="${coches}">
                            <tr class="tr">
                                <td><img ${c.imagen}></td>
                                <td>Marca: ${c.marca}<br/>Modelo: ${c.modelo}<br/>Precio: ${c.precio}</td>      
                            </tr>
                        </c:forEach>    
                    </tbody>          
                </table>
            </form>
            <footer id="fter">
                <p>Trabajo realizado para la materia Arquitectura de Software</p>
                <p>Código fuente: <a href="">git</a></p>
            </footer>
        </div>
    </body>
</html>
