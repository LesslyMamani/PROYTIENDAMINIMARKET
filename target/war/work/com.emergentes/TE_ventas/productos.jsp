<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Punto de venta</title>
        
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    
    </head>
    <body>
        <div class="container">

            <h1> Productos</h1>
            <jsp:include page="META-INF/menu.jsp">
                <jsp:param name="opcion" value="productos"/>
            </jsp:include>    
            <br>
            <a href="#" class="btn btn-primary btn-sm "><i class="fas fa-plus-circle"></i> Nuevo</a>
            
            <table class="table table-striped">
                <tr>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Descripcion</th>
                    <th>Precio</th>
                    <th></th>
                    <th></th>
                    
                </tr>
                <tr>
                    <td>1</td>
                    <td>Tablet</td>
                    <td>note25</td>
                    <td>150</td>
                    <td><a href="#"><i class="fa-solid fa-pen-to-square"></i></a></td>
                    <td><a href="#"><i class="fa-solid fa-trash-can"></i></a></td>
                </tr>
                
            </table>
            
        </div>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    </body>
</html>
