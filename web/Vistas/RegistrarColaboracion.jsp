<%-- 
    Document   : RegistrarColaboracion
    Created on : 10/09/2018, 05:15:28 PM
    Author     : Santiago.S
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">   
        <title>Culturarte</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" >
        <link rel="icon" href="culturarte.ico" type="image/x-icon" >
        <link rel="stylesheet" type="text/css" href="css/blue-white.css" id="dev-css">
        <link rel="stylesheet" type="text/css" href="css/css.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <link rel="stylesheet" type="text/css" href="css/tabs.css">
        <link rel="stylesheet" type="text/css" href="css/buscador.css">
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/tabs.js"></script>
        <script type="text/javascript" src="js/analytics.js"></script>
        <script type="text/javascript" src="js/plugins/modernizr/modernizr.js"></script>
        <style>
            .dev-page{visibility: hidden;}            
        </style>
    </head>
    <body>
       <div class="dev-page-loading preloader"></div>
        <div class="dev-page">  
            <div class="dev-page-header">
                <div class="dph-logo" style="left: 50px">
                    <a class="dev-page-sidebar-collapse">
                        <div class="dev-page-sidebar-collapse-icon">
                            <span class="line-one"></span>
                            <span class="line-two"></span>
                            <span class="line-three"></span>
                        </div>
                    </a>
                    <a href="index.html">Culturarte</a>
                </div>
                <div style= "margin-top: 3px">
                    <ul class="dph-buttons">
                        <div style="margin-top: 20px; margin-right: 5px">
                            <a href="#">Tengo una propuesta</a>
                            <a>  |  </a>
                            <a href="#">Quiero ver Propuestas</a>
                        </div>
                    </ul>
                    <div style="padding-top: 20px ; margin-left: 80px">
                        <form action="#" method="post" style="alignment-adjust: ">
                            <div>
                                <input type="search" placeholder="search">
                                <input type="submit" value="&#10140;">
                            </div>
                        </form>
                    </div>
                    <ul class="dph-buttons pull-right">    
                        <div style="margin-top: 20px; margin-right: 5px">      
                            <a href="#" class="list-contacts-item">
                                <a href="#">Iniciar</a>  
                                <a>  |  </a> 
                                <a href="#">Cerrar</a>
                            </a>
                        </div> 
                    </ul>
                </div>
            </div>
            <div class="dev-page-container">
                <div class="dev-page-sidebar">
                    <ul class="dev-page-navigation">
                        <li style="max-height: 700px;">
                            <a href="#"><i class="fa fa-file-o" ></i> <span>Usuarios</span></a>
                            <ul>
                                <li><a href="Vistas/AltaUsuario.html">Alta usuario</a></li>
                                <li><a href="#">Seguir usuario</a></li>
                                <li><a href="#">Ver proponentes</a></li>
                                <li><a href="#">Ver colaboradores</a></li>
                                <li><a href="#">Ver seguidores</a></li>
                            </ul>
                        </li>     
                        <li>
                            <a href="#"><i class="fa fa-cube"></i> <span>Propuestas</span></a>
                            <ul>   
                                <li><a href="#">Alta Propuesta</a></li>
                                <li><a href="#">Consultar propuestas</a></li>
                                <li><a href="#">Modificar propuesta</a></li>
                            </ul>                       
                        </li>    
                        <li>
                            <a href="#"><i class="fa fa-cube"></i> <span>Colaboraciones</span></a>
                            <ul>   
                                <li> <a href="Vistas/RegistrarColaboracion.jsp">Registrar Colaboracion</a></li>
                                <li><a href="#">Consultar colaboracion</a></li>
                                <li><a href="#">Cancelar colaboracion</a></li>
                            </ul>                       
                        </li>   
                        <li> 
                            <a href="#"><i class="fa fa-file-o"></i> <span>Otros</span></a>
                            <ul>
                                <li>
                                    <a href="#">Cargar datos de prueba</a>
                                </li>
                                <li>
                                    <a href="#">Opciones del administrador</a>
                                    <ul>
                                        <li><a href="pages-email-inbox.html">Evaluar propuesta</a></li>
                                    </ul>
                                </li>
                            </ul>
                            </div>
                            <br><br><br><br><br><br>
                            <div class="main">
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
