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

            <h1>FORMULARIO CLIENTES</h1>
            <jsp:include page="META-INF/menu.jsp">
                <jsp:param name="option" value="cliente"/>
            </jsp:include>
            <br>
            <form action="ClienteControlador" method="post">
                <input type="hidden" name="id" value="${cliente.id}">
                <div class="mb-3">
                    <label for="" class="form-label">Nombre</label>
                    <input type="text" class="form-control" name="nombre" values="${cliente.nombre}" placeholder="Escriba su Nombre">    
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Correo Electronico</label>
                    <input type="email" class="form-control" name="correo" values="${cliente.correo}" placeholder="Escriba su Correo">    
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Celular</label>
                    <input type="text" class="form-control" name="celular" values="${cliente.celular}" placeholder="Escriba su Celular">    
                </div>
                <button type="submit" class="btn btn-primary">Enviar</button>
            </form> 

        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    </body>
</html>
