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
                    <jsp:include page="/Vistas/Menu_lateral.jsp" />
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

        <jsp:include page="/Vistas/Tabs_Propuestas.jsp" />
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