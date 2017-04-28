<%-- 
    Document   : clientes
    Created on : 20/02/2017, 06:56:55 PM
    Author     : jnda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" type="image/png" href="http://www.e02.es/cubic/datos/docs/doc_368/logo_doc_368_creacion_logo_imagen_visual_corporativa_05_marcel_ico.png" />
        <link rel="stylesheet" href="css/clientesStyle.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes</title>
    </head>
    <body>
        <div id="body">
            <nav id="menu">
                <jsp:include page="menu.jsp"></jsp:include>
                </nav>
                <div id="contenido">
                    <a class="a2" href="registraClientes.jsp">REGISTRAR CLIENTE</a>
                    <a class="a2" href="concesionarioServlet?action=list">VER CLIENTES</a>
                    <a class="a2" href="clientes.jsp">ELIMINAR CLIENTE</a>
                    <a class="a2" href="clientes.jsp">BUSCAR CLIENTE</a>
                    <table id="tbl">
                        <thead id="thb">
                            <tr>
                                <th>Identificación</th>
                                <th>Nombre</th>
                                <th>Apellidos</th>
                                <th>Email</th>
                                <th>Teléfono</th>
                                <th>¿Delete?</th>
                            </tr>
                        </thead>
                        <tbody id="thb">
                        <c:forEach var="a" items="${clientes}">
                            <tr class="tr">
                                <td>${a.id}</td>
                                <td>${a.nombre}</td>
                                <td>${a.apellido}</td>
                                <td>${a.email}</td>
                                <td>${a.tel}</td>
                                <td><a class="ad" onclick="return confirm('Esta seguro?')" href="concesionarioServlet?action=delete&id=${a.id}">Eliminar</a></td>
                            </tr>
                        </c:forEach>    
                    </tbody>          
                </table>   
            </div>  
            <footer id="fter">
                <p>Trabajo realizado para la materia Arquitectura de Software</p>
                <p>Código fuente: <a href="">git</a></p>
            </footer>
        </div>
    </body>
</html>
