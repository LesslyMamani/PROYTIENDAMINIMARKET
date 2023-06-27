<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
        
        <title>Proyecto tienda</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    </head>
    <body>

        <div class="container">
            <h1 class="text-center">VENTAS </h1>
            <jsp:include page="META-INF/menu.jsp">
                <jsp:param name="option" value="ventas"/>
            </jsp:include>
            <br>
            <a href="VentaControlador=add" class="btn btn-primary btn-sm"><i class="fas fa-plus-square"></i> REGISTRO NUEVO</a>
            
            <table class="table table-bordered">
                <tr>
                    <th>ID</th>
                    <th>NOMBRE</th>
                    <th>DESCRIPCION</th>
                    <th>PRECIO</th>
                    <th></th>
                    <th></th>
                </tr>
                
                <c:forEach var="item" items="${ventas}">
                    <tr>
                    <td>${item.id}</td>
                    <td>${item.cliente}</td>
                    <td>${item.producto}</td>
                    <td>${item.fecha}</td>
                    <td><a href="VentaControlador?action=edit$id=${item.id}"><i class="fas fa-edit"></i></a></td>
                    <td><a href="VentaControlador?action=delete&id=${item.id}" onclick="return(confirm('Estas seguro....?'))"><i class="fas fa-trash"></i></a></td>
                </tr>
                    
                </c:forEach>
                
                
            </table>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    </body>
</html>