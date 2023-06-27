package com.emergentes.controlador;

import com.emergentes.dao.ClienteDAO;
import com.emergentes.dao.ClienteDAOimpl;
import com.emergentes.dao.ProductoDAO;
import com.emergentes.dao.ProductoDAOimpl;
import com.emergentes.dao.VentaDAO;
import com.emergentes.dao.VentaDAOimpl;
import com.emergentes.modelo.Cliente;
import com.emergentes.modelo.Producto;
import com.emergentes.modelo.Venta;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "VentaControlador", urlPatterns = {"/VentaControlador"})
public class VentaControlador extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {

            int id;
            VentaDAO dao = new VentaDAOimpl();
            ProductoDAO daoProducto = new ProductoDAOimpl();
            ClienteDAO daoCliente = new ClienteDAOimpl();
            List<Producto> lista_productos = null;
            List<Cliente> lista_clientes = null;
            Venta venta = new Venta();

            String action = (request.getParameter("action") != null) ? request.getParameter("action") : "view";
            System.out.println("opcion = " + action);
            switch (action) {
                case "add":
                    lista_productos = daoProducto.getAll();
                    lista_clientes = daoCliente.getAll();
                    request.setAttribute("lista_productos", lista_productos);
                    request.setAttribute("lista_clientes", lista_clientes);

                    request.setAttribute("venta", venta);
                    request.getRequestDispatcher("frmventas.jsp").forward(request, response);
                    break;
                case "edit":
                    id = Integer.parseInt(request.getParameter("id"));
                    venta = dao.getById(id);
                    request.setAttribute("venta", venta);
                    request.getRequestDispatcher("frmventas.jsp").forward(request, response);
                    break;
                case "delete":
                    id = Integer.parseInt(request.getParameter("id"));
                    dao.delete(id);
                    response.sendRedirect("VentaControlador");
                    break;
                case "view":
                    List<Venta> lista = dao.getAll();
                    request.setAttribute("ventas", lista);
                    request.getRequestDispatcher("ventas.jsp").forward(request, response);
                    break;
            }

        } catch (Exception ex) {
            System.out.println("error" + ex.getMessage());
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
}
