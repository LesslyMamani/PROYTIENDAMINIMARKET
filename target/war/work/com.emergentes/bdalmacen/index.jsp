<%@page import="com.emergentes.modelo.almacen"%>
<%@page import="java.util.List"%>
<%
    List<almacen> productos = (List<almacen>) request.getAttribute("productos");
    %>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Gestion de productos</h1>
        <a href="#">Nuevo producto</a>
            <table borde="1">
                <tr>
                    <th>id</th>
                    <th>Descripcion</th>
                    <th>Cantidad</th>
                     <th>Precio</th>
                      <th>Categoria</th>
                </tr>
                <c:forEach var="item" items="${productos}">
                 <tr>
                    <td>${item.id}</td>
                    <td>${item.descripcion}</td>
                    <td>${item.cantidad}</td>
                    <td>${item.precio}</td>
                    <td>${item.categoria}</td>
                    
                </tr>
                </c:forEach>
               
            </table>
    </body>
</html>
