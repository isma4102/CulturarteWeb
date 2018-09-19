/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ControladorServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import logica.Clases.DtNickTitProp;
import logica.Clases.DtinfoColaborador;
import logica.Clases.DtinfoPropuesta;
import logica.Fabrica;
import logica.Interfaces.IControladorUsuario;
import logica.Interfaces.IPropCat;

/**
 *
 * @author Santiago.S
 */
@WebServlet("/ServletRegistroColaboracion")
public class ServletRegistroColaboracion extends HttpServlet {

    IPropCat IPC = Fabrica.getInstance().getControladorPropCat();
    IControladorUsuario ICU = Fabrica.getInstance().getIControladorUsuario();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        IPC.comprobarBaseCat();
        ICU.CargarUsuarios();
        IPC.CargarPropuestas();
        IPC.CargarColaboraciones();
        List<DtNickTitProp> lista = IPC.listarPropuestaC();
        List<DtinfoColaborador> lista2 = ICU.ListarColaboradores();
        request.setAttribute("lista_propuestas", lista);
        request.setAttribute("lista_colaboradores", lista2);
        request.getRequestDispatcher("/Vistas/RegColaboracion.jsp").forward(request, response);
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
        String Opcion = request.getParameter("TituloP");
        DtinfoPropuesta propuesta = IPC.SeleccionarPropuestaR(Opcion);
        request.setAttribute("Propuestaseleccionada", propuesta);
        request.getRequestDispatcher("/Vistas/MostrarInfoPropuesta.jsp").forward(request, response);
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
