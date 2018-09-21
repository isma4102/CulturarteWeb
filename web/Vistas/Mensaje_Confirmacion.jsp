<%-- 
    Document   : Mansaje_Confirmacion
    Created on : 21/09/2018, 12:08:02 PM
    Author     : Santiago.S
--%>

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
        <div class="modal fade" id="mostrarmodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true" data-backdrop="static" data-keyboard="false">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Selección de Propuesta</h5>
                    </div>
                    <div class="modal-body">
                        Selecciono la propuesta "<% out.print(propuestaSelec.getTitulo()); %>" correctamente
                    </div>
                    <div class="modal-footer">
                        <a href="javascript:window.history.back();" class="btn btn-danger"> &laquo; Volver</a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
