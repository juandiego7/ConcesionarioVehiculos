<%-- 
    Document   : vehiculos
    Created on : 20/02/2017, 05:48:30 PM
    Author     : jnda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" type="image/png" href="http://www.e02.es/cubic/datos/docs/doc_368/logo_doc_368_creacion_logo_imagen_visual_corporativa_05_marcel_ico.png" />
        <link rel="stylesheet" href="css/vehiculosStyle.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>vehiculos</title>
    </head>
    <body>
        <div id="body">
            <nav id="menu">
                <jsp:include page="menu.jsp"></jsp:include>
                </nav>
                <div id="contenido">
                    <a class="a2" href="agregar.jsp">AGREGAR CARRO</a>
                    <a class="a2" href="concesionarioServlet?action=listarVehiculos">VER CARROS</a>
                    <a class="a2" href="vehiculos.jsp">ELIMINAR CARRO</a>
                    <a class="a2" href="vehiculos.jsp">BUSCAR CARRO</a>
                    <table id="tbl">
                        <thead id="thb"
                               <tr>
                                <th>Imagen</th>
                                <th>Descripción</th>
                                <th class="tv">¿Vender?</th>
                                <th class="td">¿Eliminar?</th>
                            </tr>
                        </thead>
                        <tbody id="thb">
                        <c:forEach var="v" items="${vehiculos}">
                            <tr class="tr">
                                <td>${v.imagen}</td>
                                <td class="ds" >Marca: ${v.marca}<br/>Modelo: ${v.modelo}<br/>Precio: ${v.precio}</td>      
                                <td class="tv"><a class="evt" href="concesionarioServlet?action=vender">Vender</a></td>
                                <td class="td"><a class="evt" onclick="return confirm('Esta seguro?')" href="concesionarioServlet?action=deleteCoche&matricula=${v.matricula}">Eliminar</a></td>
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
