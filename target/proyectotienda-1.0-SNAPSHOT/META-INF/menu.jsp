<%

String opcion = request.getParameter("option");

%>


<ul class="nav justify-content-center nav-tabs">
    <li class="nav-item">
        <a class="nav-link <%= (opcion.equals("productos") ? "active":"")%>" href="productos.jsp">PRODUCTOS</a>
    </li>
    <li class="nav-item">
        <a class="nav-link <%= (opcion.equals("clientes") ? "active":"")%>"" href="ClienteControlador">CLIENTES</a>
    </li>
    <li class="nav-item">
        <a class="nav-link <%= (opcion.equals("ventas") ? "active":"")%>"" href="VentaControlador">VENTAS</a>
    </li>
</ul>