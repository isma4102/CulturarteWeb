<%-- 
    Document   : ConsultarPerfilUsuario2
    Created on : 19/09/2018, 11:22:12 AM
    Author     : gabri
--%>



<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="logica.Clases.DtUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Datos del usuario</title>
    </head>
    <body>
        <%DtUsuario dtu = (DtUsuario) request.getAttribute("Usuario");
            out.println("<h1>Datos del usuario</h1>");
            out.println("<h3>Nickname:" + dtu.getNickName() + "</h3>");
            out.println("<h3>Nombre: " + dtu.getNombre() + "</h3>");
            out.println("<h3>Apellido:" + dtu.getApellido() + "</h3>");
            out.println("<h3>Correo:" + dtu.getCorreo() + "</h3>");
            Calendar cal = dtu.getFechaN();
            int dia = cal.get(Calendar.DAY_OF_MONTH);
            int mes = cal.get(Calendar.MONTH) + 1;
            int anio = cal.get(Calendar.YEAR);
            out.println("<h3>Fecha de nacimiento:" + dia + "/" + mes + "/" + anio + "</h3>");

            if (dtu.Esproponente()) {
                out.println("<h3>Es proponente</h3>");
            } else {
                out.println("<h3>Es colaborador</h3>");
            }%>


    </body>
</html>
