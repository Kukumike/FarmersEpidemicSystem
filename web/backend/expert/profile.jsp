<%-- 
    Document   : profile
    Created on : Apr 14, 2017, 9:58:04 PM
    Author     : Michael Mukolwe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FEWS &CenterDot; EXPERT PROFILE</title>
        <!--css links-->
        <link href="../../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../../assets/css/swiper.min.css" rel="stylesheet" type="text/css"/>
        <link href="../../assets/css/main.css" rel="stylesheet" type="text/css"/>
        <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
        <link rel="icon" href="../../assets/img/favicon.png" type="image/x-icon">
    </head>
    <body style="background-color: #f9f9f9;font-family:'Oxygen-Regular';">
        <%@page import="sys.classes.*,sys.servlets.*" %>
        <%
            if (session.getAttribute("user") == null) {
                response.sendRedirect("../Login.jsp");
            }
        %>
        <header>
            <!--navbar one-->
            <nav class="navbar navbar-primary navbar-fixed-top" role="navigation">
                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="../../index.jsp"><span style="color:#5cb85c;">FEWS</span> LOGO</a>
                    </div>
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <div class="dropdown navbar-right">
                            <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown">
                                Expert Action
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu " role="menu" aria-labelledby="dropdownMenu1">
                                <li role="presentation" class="text-center"><p>Signed in as <bold>username</bold></p></li>
                                <li role="presentation" class="divider"></li>   
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="FarmerDash.jsp"><span class="glyphicon glyphicon-dashboard" style="margin-right: 20px;"></span>DASHBOARD</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="profile.jsp"><span class="glyphicon glyphicon-user" style="margin-right:  20px;"></span>PROFILE</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="messages.jsp"><span class="glyphicon glyphicon-envelope" style="margin-right: 20px;"></span>MESSAGES</a></li>
                                <li role="presentation" class="divider"></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="Logout"><span class="glyphicon glyphicon-log-out" style="margin-right: 20px;"></span> LOGOUT</a></li>
                            </ul>
                        </div>
                    </div>
                </div><!-- /.container-fluid -->
            </nav>
        </header>
        <div class="container" style="">
            <div class="row" >
                <div class="col-md-3">
                    <div class="well well-sm" style="margin-top: 50px;height: 200px;width: 200px;border-radius: 400px; ">
                        <p class="text-center" style="margin-top: 50px;">User Profile <br>Image</p>
                    </div>
                    <hr>
                    <header><h4 style="padding-left: 5px;padding-top: 5px;">Experts Details</h4></header>
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <p>Name: .............</p>
                            <p>Contact:.............</p>
                            <p>About Us: .............</p>
                            <p>Location: .............</p>

                <p><a href="settings.jsp">View More / Edit</a></p>
                        </div>
                    </div>
                    
                </div>

                <div class="col-md-8">
                    <div class="panel panel-default" style="margin-top: 20px;border-radius: 0px;box-shadow: 20px;">
                        <div class="panel-heading" style="background-color: transparent;">
                            <h2 class="panel-title" style="font-size: 20px;">My Posts</h2>
                        </div>
                        <div class="panel-body">
                            <div class="">
                                    <div class="media">
                                        <a class="pull-left" href="#">
                                            <img class="media-object well well-sm" src="..." alt="epidemic photo" style="width: 80px;height: 100px;margin-right: 20px;">
                                        </a>
                                        <div class="media-body">
                                            <h4 class="media-heading">Blog title 2</h4>
                                            <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel
                                                metus scelerisque ante sollicitudin commodo. Cras purus odio, 
                                                vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum
                                                nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                                                <a href="#">Read Profile</a></p>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class="">
                                    <div class="media">
                                        <a class="pull-left" href="#">
                                            <img class="media-object well well-sm" src="..." alt="epidemic photo" style="width: 80px;height: 100px;margin-right: 20px;">
                                        </a>
                                        <div class="media-body">
                                            <h4 class="media-heading">Blog title 3</h4>
                                            <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel
                                                metus scelerisque ante sollicitudin commodo. Cras purus odio, 
                                                vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum
                                                nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                                                <a href="#">Read Profile</a></p>
                                        </div>
                                    </div>
                                </div>
                                <hr>
                        </div>
                    </div>

                </div>
                <div class="col-md-1 clearfix"></div>

            </div>
        </div>


        <!-- Footer -->
        <footer class="navbar-fixed-bottom">
            <div class="container text-center">
                <p><a href="#">Copyright &copy; kukuSoft.co.ke 2017</a></p>
                <p>Terms of Services Applied</p>
            </div>
        </footer>

        <!-- Placed at the end of the document so the pages load faster -->
        <script type="text/javascript">
            $(function () {
                $('#myTab a:last').tab('show')
            });
            function maxLength(el) {
                if (!('maxLength' in el)) {
                    var max = el.attributes.maxLength.value;
                    el.onkeypress = function () {
                        if (this.value.length >= max)
                            return false;
                    };
                }
            }

            maxLength(document.getElementById("blog-content"));
        </script>
        <script type="text/javascript" src="../../assets/js/jquery.js"></script>
        <script type="text/javascript" src="../../assets/js/bootstrap.js"></script>
    </body>
</html>