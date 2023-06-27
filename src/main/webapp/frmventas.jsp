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

            <h1>FORMULARIO VENTAS</h1>
            <jsp:include page="META-INF/menu.jsp">
                <jsp:param name="option" value="ventas"/>
            </jsp:include>
            <br>
            <form action="VentaControlador" method="post">
                <input type="hidden" name="id" value="${venta.id}">
                <div class="mb-3">
                    <label for="" class="form-label">Cliente</label>
                    <input type="text" class="form-control" name="cliente_id" values="${venta.cliente_id}" placeholder="Escriba el Id">   
                    <select name="cliente_id" class="form-control"> 
                        
                        <c:forEach var="item" items="${lista_clientes}">
                           <option>${item.nombre}</option>  
                        </c:forEach>
                       
                    </select>
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Producto</label>
                    <input type="text" class="form-control" name="producto_id" values="${venta.producto_id}" placeholder="Escriba el Id del Producto">    
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Fecha</label>
                    <input type="text" class="form-control" name="fecha" values="${venta.fecha}" placeholder="Escriba Fecha">    
                </div>
                <button type="submit" class="btn btn-primary">Enviar</button>
            </form> 

        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    </body>
</html>
