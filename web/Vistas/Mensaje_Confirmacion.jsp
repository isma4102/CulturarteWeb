<%-- 
    Document   : Mansaje_Confirmacion
    Created on : 21/09/2018, 12:08:02 PM
    Author     : Santiago.S
--%>

<%@page import="logica.Clases.TipoRetorno"%>
<%@page import="logica.Clases.DtinfoPropuesta"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Colaboración</title>
        <script type="text/javascript" src="js/jquery.js"></script> 
        <link href="css/bootstrap.css" rel="stylesheet">
        <script src="js/bootstrap.js"></script>
        <script>
            $(document).ready(function ()
            {
                $("#mostrarmodal").modal("show");
            });
        </script>
    </head>
    <body>
        <%
            DtinfoPropuesta propuestaSelec = (DtinfoPropuesta) request.getAttribute("Propuestaseleccionada");
        %>
        <div class="modal fade" id="mostrarmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Registrar la colaboracion con la propuesta "<% out.print(propuestaSelec.getTitulo());%>"</h5>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="form-group">
                                <label for="recipient-name" class="col-form-label">Monto</label>
                                <input type="text" class="form-control" id="recipient-name">
                            </div>
                            <select class="selectpicker">
                                <% if (propuestaSelec.getTipoRetorno().compareTo(TipoRetorno.Entradas) == 0) {
                                        out.print("<option> Entradas </option>");
                                    } else if (propuestaSelec.getTipoRetorno().compareTo(TipoRetorno.porGanancias) == 0) {
                                        out.print("<option> Por ganancias </option>");
                                    } else {
                                        out.print("<option> Entradas </option>");
                                        out.print("<option> Por ganancias </option>");
                                    }
                                %>
                            </select>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Volver</button>
                        <button type="button" class="btn btn-primary">Salir al Inicio</button>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
