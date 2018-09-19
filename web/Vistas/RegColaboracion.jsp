<%-- 
    Document   : RegColaboracion
    Created on : 18/09/2018, 07:14:01 PM
    Author     : Santiago.S
--%>

<%@page import="logica.Clases.DtinfoPropuesta"%>
<%@page import="logica.Clases.DtinfoColaborador"%>
<%@page import="logica.Clases.DtNickTitProp"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/bootstrap.css" rel="stylesheet">
        <script src="js/bootstrap.js"></script>
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/tabs.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Colaboración</title>

    </head>
    <body>
        <jsp:include page="/Vistas/Barra_menu.jsp" />
        <div style="float: left">
            <table class="table table-bordered table-hover formulario" style="margin-left: 141px; width: 100%;">
                <thead>
                <h3 style=" position: absolute; top: 76px;left: 358px;">Propuestas</h3>
                <form class="navbar-form navbar-right">

                    <input style="width: 184px;margin-left: 330px;margin-top: 139px;margin-bottom: -23px;" type="text" class="form-control" placeholder="Buscar" />
                </form>
                <tr>
                    <th class="active">Seleccionar</th>
                    <th class="active">Titulo de Propuesta</th>
                    <th class="active">Nombre del Proponente</th>
                    <th class="active">Acciones</th>
                </tr>
                </thead>
                <tbody>
                <fieldset>
                    <%
                        List<DtNickTitProp> lista = (List<DtNickTitProp>) request.getAttribute("lista_propuestas");
                        for (int i = 0; i < lista.size(); i++) {
                            out.print("<tr>");
                            out.print("<form class=\"form-signin\" action=\"ServletRegistroColaboracion\" method=\"POST\"> ");
                            out.print("<td><input onclick=\"LlenarSelect()\" type=\"radio\" name=\"edad\" value=\"" + i + "\" /></td>");
                            out.print("<td><input style=\"border:none\" type=\"text\" class=\"form-control-plaintext\" name=\"TituloP\" value=\"" + lista.get(i).getTituloP() + "\" readonly=\"readonly\"/></td>");
                            out.print("<td><input style=\"border:none\" type=\"text\" class=\"form-control-plaintext\" name=\"TituloP\" value=\"" + lista.get(i).getProponente() + "\" readonly=\"readonly\"/></td>");
                            out.print("<td><button type=\"imput\" name=\"boton\" class=\"btn btn-primary\">Ver</button></td>");
                            out.print("</form>");
                            out.print("</tr>");
                        }
                    %>
                </fieldset>
                </tbody>
            </table>
        </div>



        <div style="float: right;margin-top: 220px;margin-right: 247px; box-shadow: 0 0 20px 1px rgba(0,0,0,0.3);">
             <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Registro de colaboración</h3>
                </div>
                <div class="panel-body">
                    <form >
                        <div class="form-group">
                            <label for="recipient-name" class="col-form-label">Monto:</label>
                            <input required type="text" class="form-control" id="recipient-name">
                        </div>
                        <div class="form-group">
                            <div class="dropdown">
                                <button class="btn btn-default dropdown-toggle" type="button" id="menu1" data-toggle="dropdown">Tipo de entrada
                                    <span class="caret"></span></button>
                                <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
                                  <form name="formulario1" action="#">
                                    <select id="combo" class="form-control form-control-sm">
                                        <option>Entradas</option>
                                        <option>Por ganancias</option>
                                    </select>
                                </form>
                                </ul>
                            </div>
                        </div>
                       
                        <div class="modal-footer">
                            <button type="button" class="btn btn-primary">Registrar Colaboración</button>
                        </div>
                    </form>

                </div>
            </div>



    </body>
</html>
