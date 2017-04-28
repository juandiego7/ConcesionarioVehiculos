<%-- 
    Document   : menu
    Created on : 20/02/2017, 05:47:22 PM
    Author     : jnda
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="css/menuStyle.css">
<html>
    <nav id="Container">
        <c:if test="${empty login}">
            <a class="a1" href="ingreso.jsp">Ingresar</a>
            <a class="a1" href="registraAdmins.jsp">Registrarse</a>
            <a class="a1" href="acerca.jsp">Acerca</a>
            <a class="a1" href="index.jsp">Inicio</a>  

        </c:if>
        <c:if test="${not empty login}">
            <a class="a1" href="concesionarioServlet?action=list">Clientes</a>
            <a class="a1" href="concesionarioServlet?action=listarVehiculos">Veh�culos</a>
            <a class="a1" href="ventas.jsp">Ventas</a>  
            <a class="a1" href="concesionarioServlet?action=logout">Salir</a>         
        </c:if>        
    </nav>
    <br>
    <hr/>

</html>

