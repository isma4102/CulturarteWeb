<%-- 
    Document   : Inicio
    Created on : 18/09/2018, 01:12:17 AM
    Author     : Martin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>        
        <title>Culturarte</title>

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" >
        <meta http-equiv="X-UA-Compatible" content="IE=edge" >
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" >

        <link rel="icon" href="culturarte.ico" type="image/x-icon" >
        <link rel="stylesheet" type="text/css" href="css/tabs.css">
        <link href="css/bootstrap.css" rel="stylesheet">
        <script src="js/bootstrap.js"></script>
        <script type="text/javascript" src="../jquery.js"></script>
        <script type="text/javascript" src="js/tabs.js"></script>
        <style>
            .dev-page{visibility: hidden; }            
        </style>
    </head>
    <body>

        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar" onclick="toggleSidebarEsconder()">
                        <img src="Imagenes/menu-icono.png" alt="" class="menu-bar">

                    </button>
                    <div id="sidebar">
                        <div class="toggle-btn" onclick="toggleSidebar()">
                            <img src="Imagenes/menu-icono.png" alt="" class="menu-bar">

                            <ul class="nav navbar-nav navbar-right">
                                <li style=" margin-left: 45px; margin-top: -50px "><H4 href="#">Culturarte</H4></li>
                            </ul>
                        </div>
                        <nav class="navigation">
                            <ul class="mainmenu" style="font">
                                <li><a style="color: white"  href="">Usuarios</a>
                                    <ul  class="submenu" >
                                        <li><a style="color: black" href="/CulturarteWeb/altaUsuarioServlet" >Alta Usuario</a></li>
                                        <li><a style="color: black" href="/CulturarteWeb/SeguirUsuario" >Seguir usuario</a></li>
                                        <li><a style="color: black" href="#">Ver proponentes</a></li>
                                        <li><a style="color: black" href="#">Ver colaboradores</a></li>
                                        <li><a style="color: black" href="#">Ver seguidores</a></li>
                                    </ul>
                                </li>
                                <li><a style="color: white" href="">Propuestas</a>
                                    <ul class="submenu">
                                        <li><a style="color: black" href="/CulturarteWeb/ServletAltaPropuesta" >Alta Propuestas</a></li>
                                        <li><a style="color: black" href="#">Consultar propuestas</a></li>
                                        <li><a style="color: black" href="#">Modificar propuestas</a></li>
                                    </ul>
                                </li>
                                <li><a style="color: white"  href="">Colaboraciones</a>
                                    <ul class="submenu">
                                        <li><a style="color: black" href="/CulturarteWeb/Registrar-colaboracion">Registrar Colaboración</a></li>
                                        <li><a style="color: black" href="/CulturarteWeb/ServletConsultarPropuesta">Consultar colaboracion</a></li>
                                        <li><a style="color: black" href="#">Cancelar colaboración</a></li>
                                    </ul>
                                </li>
                                <li><a style="color: white" href="">Otros</a>
                                    <ul class="submenu">
                                        <li><a style="color: black;" href="#">Cargar datos de prueba</a></li>
                                        <li><a style="color: black" href="#">Opciones del administrador</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="navbar-collapse collapse" id="navbar">
                    <ul class="nav navbar-nav navbar-right">
                        <img style="margin-top: 7px" src="Imagenes/nadie.png" class="img-circle" width=" 40" height="40">
                        <a style="color: white" href="Vistas/iniciarSesion.jsp"> Iniciar </a>
                        <a style="color: white">  |  </a>
                        <a style="color: white" href="#"> Cerrar </a>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li style="margin-top: 1px; "><a href="#">Tengo una propuesta</a></li>
                        <li style="margin-top: 1px"><a href="#">Quiero ver Propuestas</a></li>
                    </ul>

                    <form class="navbar-form navbar-right">
                        <input type="text" class="form-control" placeholder="Buscar" />
                    </form>
                </div>
            </div>
        </nav>

        <br><br><br><br><br><br>
        <div id="main">
            <div class="tabs animated-fade">
                <ul class="tab-links">
                    <li class="active"><a href="#tab11">Propuestas Creadas</a></li>
                    <li><a href="#tab22">Propuestas en Financiación</a></li>
                    <li><a href="#tab33">Propuestas Financiadas</a></li>
                    <li><a href="#tab22">Propuestas NO Financiadas</a></li>
                    <li><a href="#tab33">Propuestas Canceladas</a></li>
                </ul>
                <div class="tab-content">
                    <div id="tab11" class="tab active">
                        <p>Tab #1 content goes here!</p>
                        <p>Donec pulvinar neque sed semper lacinia. Curabitur lacinia 
                            ullamcorper nibh; quis imperdiet velit eleifend ac. Donec blandit mauris
                            eget aliquet lacinia! Donec pulvinar massa interdum risus ornare 
                            mollis.</p>
                    </div>
                    <div id="tab22" class="tab">
                        <p>Tab #2 content goes here!</p>
                        <p>Donec pulvinar neque sed semper lacinia. Curabitur lacinia 
                            ullamcorper nibh; quis imperdiet velit eleifend ac. Donec blandit mauris
                            eget aliquet lacinia! Donec pulvinar massa interdum risus ornare 
                            mollis. In hac habitasse platea dictumst. Ut euismod tempus hendrerit. 
                            Morbi ut adipiscing nisi. Etiam rutrum sodales gravida! Aliquam tellus 
                            orci, iaculis vel.</p>
                    </div>
                    <div id="tab33" class="tab">
                        <p>Tab #3 content goes here!</p>
                        <p>Donec pulvinar neque sed semper lacinia. Curabitur lacinia 
                            ullamcorper nibh; quis imperdiet velit eleifend ac. Donec blandit mauris
                            eget aliquet lacinia! Donec pulvinar massa interdum ri.</p>
                    </div>
                </div>
            </div>
        </div>  
    </div>


    <script type="text/javascript" src="js/plugins/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="js/plugins/jquery/jquery-ui.min.js"></script>
    <script type="text/javascript" src="js/plugins/bootstrap/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js"></script>
    <script type="text/javascript" src="js/plugins/moment/moment.js"></script>
    <script type="text/javascript" src="js/plugins/knob/jquery.knob.min.js"></script>
    <script type="text/javascript" src="js/plugins/sparkline/jquery.sparkline.min.js"></script>
    <script type="text/javascript" src="js/dev-loaders.js"></script>
    <script type="text/javascript" src="js/dev-layout-default.js"></script>        
    <script type="text/javascript" src="js/dev-app.js"></script>
</body>
</html>
