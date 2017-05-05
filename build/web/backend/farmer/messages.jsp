<%-- 
    Document   : messages
    Created on : Apr 14, 2017, 5:15:58 PM
    Author     : Michael Mukolwe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FEWS &CenterDot; FARMER DASHBOARD</title>
        <!--css links-->
        <link href="../../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../../assets/css/swiper.min.css" rel="stylesheet" type="text/css"/>
        <link href="../../assets/css/main.css" rel="stylesheet" type="text/css"/>
        <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
        <link rel="icon" href="../../assets/img/favicon.png" type="image/x-icon">
    </head>
    <body style="background-color: #f9f9f9;font-family:'Oxygen-Regular';" onload="notify();">
        <%@page import="sys.classes.*" %>
        <%
            DB_class db = new DB_class();

            if (session.getAttribute("user") == null) {
                response.sendRedirect("../Login.jsp");
            }
            Login_class user_ = (Login_class) session.getAttribute("user");
            if (user_ == null) {
                user_ = new Login_class();
            }
            String user_email = user_.getUserEmail();
            int countNotification = db.countNotifications(user_email);
            int accStatus = db.getAccountStatus(user_email);

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
                    <div class="collapse navbar-collapse" id="">
                        <div class="dropdown navbar-right">
                            <ul class="nav navbar-nav">
                                <li class="" ><a href="#" class="popover-dismiss" id="not"><span style="padding-top: 5px;" class="glyphicon glyphicon-bell"><%=countNotification%></span></a></li>
                            </ul>
                            <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown">
                                <%= user_.getUserEmail()%>
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-right" role="menu" aria-labelledby="dropdownMenu1">
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
                <div class="col-md-2 clearfix"></div>
                <div class="col-md-8">
                    <!--check if account is confirmed to view message or not-->
                    <input type="number" class="hidden" value="<%=accStatus%>" id='acc'/>
                    <!--confirmation message-->
                    <div class="alert alert-warning" id="alert_status" >A confirmation email was sent to <strong><%=user_.getUserEmail()%></strong>. Please verify your account!</div>

                    <div class="panel" style="margin-top: 50px;background-color: #f9f9f9;">
                        <div class="panel-heading" style="background-color: transparent;">
                            <h2 class="panel-title" style="font-size: 20px;">Messages Unread :</h2>
                        </div>
                        <div class="panel-body" style="margin-left: 5px;">
                            <div class="row">
                                <div class="media">
                                    <a class="pull-left" href="#">
                                        <img class="media-object well well-sm" src="..." alt="epidemic photo" style="width: 80px;height: 100px;margin-right: 20px;">
                                    </a>
                                    <div class="media-body">
                                        <h4 class="media-heading">New Blog Post Name</h4>
                                        <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel
                                            metus scelerisque ante sollicitudin commodo. Cras purus odio, 
                                            vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum
                                            nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                                            <a href="#">Read </a></p>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="media">
                                    <a class="pull-left" href="#">
                                        <img class="media-object well well-sm" src="..." alt="epidemic photo" style="width: 80px;height: 100px;margin-right: 20px;">
                                    </a>
                                    <div class="media-body">
                                        <h4 class="media-heading">New Reply Name</h4>
                                        <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel
                                            metus scelerisque ante sollicitudin commodo. Cras purus odio, 
                                            vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum
                                            nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                                            <a href="#">Read</a></p>
                                    </div>
                                </div>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="media">
                                    <a class="pull-left" href="#">
                                        <img class="media-object well well-sm" src="..." alt="epidemic photo" style="width: 80px;height: 100px;margin-right: 20px;">
                                    </a>
                                    <div class="media-body">
                                        <h4 class="media-heading">Message From: Expert/Farmer Name</h4>
                                        <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel
                                            metus scelerisque ante sollicitudin commodo. Cras purus odio, 
                                            vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum
                                            nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                                            <a href="#">Read</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-2 clearfix"></div>
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
            function notify() {
                if (document.getElementById("not").value !== "0") {
                    document.getElementById("not").style.color = "#FF6666";
                } else if (document.getElementById("not").value === "0") {
                    document.getElementById("not").style.color = "yellow";
                }

                //check if account is confirmed
                if (document.getElementById("acc").value === "0") {
                    document.getElementById("alert_status").style.display = "block";
                } else if (document.getElementById("acc").value === "1") {
                    document.getElementById("alert_status").style.display = "none";
                }
            }
        </script>
        <script type="text/javascript" src="../../assets/js/jquery.js"></script>
        <script type="text/javascript" src="../../assets/js/bootstrap.js"></script>
    </body>
</html>