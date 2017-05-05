<%-- 
    Document   : profile
    Created on : Apr 14, 2017, 5:12:18 PM
    Author     : Michael Mukolwe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="sys.classes.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
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

        <%
            if (session.getAttribute("user") == null) {
                response.sendRedirect("../Login.jsp");
            }

            DB_class db = new DB_class();

        %>
        <sql:setDataSource var='bgGet' driver='<%= db.jstlDriver()%>' url='<%= db.jstlUrl()%>' user='<%= db.jstlUser()%>'  password='<%= db.jstlPassword()%>'/>


        <%
            Login_class user_ = (Login_class) session.getAttribute("user");
            if (user_ == null) {
                user_ = new Login_class();
            }
            String user_email = user_.getUserEmail();
            int countNotification = db.countNotifications(user_email);
            int accStatus = db.getAccountStatus(user_email);

        %>
        <sql:query dataSource="${bgGet}" var="reqUsers">
            <%= db.user_Details(user_email)%>
        </sql:query>
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
                <div class="col-md-3">
                    <div class="well well-sm" style="margin-top: 50px;height: 200px;width: 200px;">
                        <p class="text-center" style="margin-top: 50px;">User Profile <br>Image</p>
                    </div>
                    <hr>
                    <c:forEach var="user" items="${reqUsers.rows}">

                        <div class="panel panel-default">
                            <div class="panel-body">
                                <header><h4 style="padding-left: 5px;padding-top: 5px;">${user.user_full_name}</h4></header>
                                <p style="margin-top: 20px;">(Only Visible to you)</p>
                                <p><span class="glyphicon glyphicon-phone"></span> : ${user.user_phone}</p>
                                <p><span class="glyphicon glyphicon-envelope"></span> :${user.user_email}</p>
                                <p>Joined on: ${user.user_timestamp}</p>
                                <hr>

                                <form action="" method="">
                                    <!--submit user id-->
                                    <div class="form-group">
                                        <a class="btn btn-primary" style="border-radius: 0px; width: 100%;"href="settings.jsp?user_email=<%=user_.getUserEmail()%>">EDIT PROFILE</a>
                                    </div> 
                                </form> 
                            </div> 
                        </div> 
                    </c:forEach> 
                </div> 
                <div class="col-md-8">
                    <!--check if account is confirmed to view message or not-->
                    <input type="number" class="hidden" value="<%=accStatus%>" id='acc'/>
                    <!--confirmation message-->
                    <div class="alert alert-warning" id="alert_status" >A confirmation email was sent to <strong><%=user_.getUserEmail()%></strong>. Please verify your account!</div>

                    <div class="panel panel-default" style = "margin-top: 20px;border-radius: 0px;box-shadow: 20px;"
                         > <div class="panel-heading" style = "background-color: transparent;"> 
                            <h2 class="panel-title" style = "font-size: 20px;" > My Posts</h2> 
                        </div>
                    </div>
                    <div class="panel-body">
                        <div class="">
                            <div class="media">
                                <a class="pull-left" href = "#"
                                   > <img 
                                        class="media-object well well-sm" src = "..." alt = "epidemic photo" style = "width: 80px;height: 100px;margin-right: 20px;"
                                        > 
                                </a>
                                <div class="media-body">
                                    <h4 class="media-heading">Blog title 2</h4
                                    > <p>
                                        Cras sit amet nibh libero
                                        , in gravida nulla.Nulla vel
                                        metus scelerisque ante sollicitudin commodo.Cras purus odio
                                        , 
                                        vestibulum in vulputate at, tempus viverra turpis
                                        . Fusce condimentum
                                        nunc ac nisi vulputate fringilla.Donec lacinia congue felis in faucibus
                                        . 
                                        <a href = "#" > Read Profile</a > </p>
                                </div>
                            </div>
                        </div>
                        <hr>
                        <div class="">
                            <div class="media">
                                <a class="pull-left" href = "#"
                                   > <img 
                                        class="media-object well well-sm" src = "..." alt = "epidemic photo" style = "width: 80px;height: 100px;margin-right: 20px;"
                                        > </a>
                                <div  class="media-body">
                                    <h4 class="media-heading">Blog title 3</h4
                                    > <p>
                                        Cras sit amet nibh libero
                                        , in gravida nulla.Nulla vel
                                        metus scelerisque ante sollicitudin commodo.Cras purus odio
                                        , 
                                        vestibulum in vulputate at, tempus viverra turpis
                                        . Fusce condimentum
                                        nunc ac nisi vulputate fringilla.Donec lacinia congue felis in faucibus
                                        . 
                                        <a href = "#" > Read Profile</a > 
                                    </p>
                                </div>
                            </div>
                        </div>
                        <hr>
                    </div>
                </div>
            </div>
            <div class="col-md-1 clearfix"></div
            > 
        </div>
    </div>
    <!-- Footer -->
    <footer class="">
        <div class="container text-center">
            <p><a href="#">Copyright &copy; kukuSoft.co.ke 2017</a></p>
            <p>Terms of Services Applied</p>
        </div>
    </footer>
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript">
        $(function () {
            $('#myTab a:last').tab('show');
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
    <script type = "text/javascript" src = "../../assets/js/jquery.js" ></script>
    <script type = "text/javascript" src = "../../assets/js/bootstrap.js" ></script>
</body>
</html>