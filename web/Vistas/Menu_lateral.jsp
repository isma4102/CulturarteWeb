<!DOCTYPE html>
<html>
    <head>
        <link href="css/bootstrap.css" rel="stylesheet">
        <script src="js/bootstrap.js"></script>
        <script type="text/javascript" src="js/jquery.js"></script> 
        <link href="css/bootstrap.css" rel="stylesheet">
        <script src="js/bootstrap.js"></script>
        <script type="text/javascript" src="js/jquery.js"></script>
    </head>
    <body> <div class="navbar-header">
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
                                        <li><a style="color: black" href="/CulturarteWeb/ServletConsultarUsuario">Ver usuarios</a></li>
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
                                        <li><a style="color: black" href="ServletRegistroColaboracion">Registrar Colaboración</a></li>
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