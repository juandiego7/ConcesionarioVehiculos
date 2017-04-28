/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.udea.servletPack;

import co.edu.udea.ejbPack.AdministradoresFacadeLocal;
import co.edu.udea.ejbPack.ClientesFacadeLocal;
import co.edu.udea.ejbPack.VehiculosFacade;
import co.edu.udea.ejbPack.VehiculosFacadeLocal;
import co.edu.udea.entityPack.Administradores;
import co.edu.udea.entityPack.Clientes;
import co.edu.udea.entityPack.Vehiculos;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jnda
 */
public class concesionarioServlet extends HttpServlet {

    @EJB
    private VehiculosFacadeLocal vehiculosFacade;

    @EJB
    private ClientesFacadeLocal clientesFacade;

    @EJB
    private AdministradoresFacadeLocal administradoresFacade;
    
    

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String action = request.getParameter("action");
            String url = "index.jsp";
            if ("login".equals(action)) {
                String u = request.getParameter("username");
                String p = request.getParameter("password");
                boolean chekLogin = administradoresFacade.checkLoging(u, p);
                if (chekLogin) {
                    request.getSession().setAttribute("login", u);
                    url = "concesionarioServlet?action=listarVehiculos";
                } else {
                    url = "ingreso.jsp?error=1";
                }
            } else if ("registroAdms".equals(action)) {
                Administradores a = new Administradores();
                a.setId(request.getParameter("id"));
                a.setNombre(request.getParameter("nombre"));
                a.setApellido(request.getParameter("apellidos"));
                a.setUsername(request.getParameter("username"));
                a.setPassword(request.getParameter("password"));
                administradoresFacade.create(a);
                url = "ingreso.jsp";
            } else if ("registroCts".equals(action)) {
                Clientes c = new Clientes();
                c.setId(request.getParameter("id"));
                c.setNombre(request.getParameter("nombre"));
                c.setApellido(request.getParameter("apellidos"));
                c.setEmail(request.getParameter("email"));
                c.setTel(request.getParameter("tel"));
                clientesFacade.create(c);
                url = "concesionarioServlet?action=list";
            } else if ("logout".equals(action)) {
                request.getSession().removeAttribute("login");
                url = "ingreso.jsp";
            } else if ("list".equals(action)) {
                List<Clientes> findAll = clientesFacade.findAll();
                request.getSession().setAttribute("clientes", findAll);
                url = "clientes.jsp";
            } else if ("delete".equals(action)) {
                String id = request.getParameter("id");
                Clientes a = clientesFacade.find(id);
                clientesFacade.remove(a);
                url = "concesionarioServlet?action=list";
            } else if ("listarIndex".equals(action)){
                List<Vehiculos> findCoches = vehiculosFacade.findAll();
                request.getSession().setAttribute("coches", findCoches);
                url = "index.jsp";
            } else if("listarVehiculos".equals(action)){
                List<Vehiculos> findVehiculos = vehiculosFacade.findAll();
                request.getSession().setAttribute("vehiculos", findVehiculos);
                url = "vehiculos.jsp";
            } else if ("vender".equals(action)){
                url = "ventas.jsp";
            } else if("deleteCoche".equals(action)){
                String matricula = request.getParameter("matricula");
                Vehiculos v = vehiculosFacade.find(matricula);
                vehiculosFacade.remove(v);
                url = "concesionarioServlet?action=listarVehiculos";
            }
            response.sendRedirect(url);
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
