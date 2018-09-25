<%-- 
    Document   : busqueda
    Created on : 22-sep-2018, 13:20:24
    Author     : Lucas
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="logica.Clases.DtinfoPropuesta"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            List<DtinfoPropuesta> lista = new ArrayList<>();
            lista = (ArrayList) request.getAttribute("resultado");
            if (lista.isEmpty()) {%>
        <script>
            window.alert("No se a encontrado resultados para su busqueda");
        </script>
        <% }%>
        <h1>Resultado de la busqueda</h1>
        <h3>Se encontraron <%=lista.size()%> resultados</h3>
        <%for (int i = 0; i < lista.size(); i++) {
                DtinfoPropuesta p = lista.get(i);
        %>
        <div border="1">
            <div style="border: solid"><td><%=p.getTitulo()%></td></div>
            <div style="border: solid"><td><%=p.getDescripcion()%></td></div>
            <div style="border: solid"><td><%=p.getLugar()%></td></div>
        </div>><br>
        <%}
        %>    

    </body>
</html>
