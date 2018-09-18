package ControladorServlet;


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletAltaUsuario", urlPatterns = {"/altaUsuarioServlet"})
public class ServletAltaUsuario extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public String MENSAJE = null;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        request.getRequestDispatcher("Vistas/altaUsuario.jsp").forward(request, response);
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String operacion = request.getParameter("op");
        switch (operacion) {
            case "1":
                String nick = request.getParameter("nick");
                String nombre = request.getParameter("nombre");
                String apellido = request.getParameter("apellido");
                String correo = request.getParameter("correo");
                String pass = request.getParameter("pass");
                String fecha = (request.getParameter("fecha") == null ? "" : request.getParameter("fecha"));
                String pass2 = request.getParameter("pass2");
                String direccion = request.getParameter("direccion");
                String sitio = request.getParameter("sitio");
                String biografia = request.getParameter("biografia");
                String tipoP = request.getParameter("tipo");
                String imagen = "";
                
                if (tipoP == "proponente") {
                    Calendar cal;
                    DateFormat format = new SimpleDateFormat("yyyy/mm/dd");
                    format.format(fecha);
                    cal = format.getCalendar();
                    try {
                        logica.Controladores.ControladorUsuario.getInstance().AgregarUsuarioProponente(nick, nombre, apellido, correo, cal, imagen, direccion, biografia, sitio, pass);
                        MENSAJE = "Se registro exitosamente";
                        request.setAttribute("mensaje", MENSAJE);
                        request.getRequestDispatcher("/Vistas/altaUsuario.jsp").include(request, response);
                    } // try
                    catch (ExceptionInInitializerError | Exception a) {
                        MENSAJE = "Error al registrar este usuario";
                        request.getSession().setAttribute("mensaje", MENSAJE);
                        request.getRequestDispatcher("/Vistas/altaUsuario.jsp").forward(request, response);
                    } // catch           

                } else {
                    Calendar cal;
                    DateFormat format = new SimpleDateFormat("yyyy/mm/dd");
                    format.format(fecha);
                    cal = format.getCalendar();
                    try {
                        logica.Controladores.ControladorUsuario.getInstance().AgregarUsuarioColaborador(nick, nombre, apellido, correo, cal, pass, pass);
                        MENSAJE = "Se registro exitosamente";
                        request.getSession().setAttribute("mensaje", MENSAJE);
                        request.getSession().setAttribute("nick", nick);
                        request.getRequestDispatcher("/Vistas/altaUsuario.jsp").include(request, response);
                    } // try
                    catch (ExceptionInInitializerError | Exception a) {
                        MENSAJE = "Error al dar registrar este usuario";
                        request.getSession().setAttribute("mensaje", MENSAJE);
                        request.getRequestDispatcher("/Vistas/altaUsuario.jsp").forward(request, response);
                    } // catch           
                }
                
                processRequest(request, response);
                break;
        }
        
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
