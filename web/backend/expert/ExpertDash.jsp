<%-- 
    Document   : ExpertDash
    Created on : Apr 6, 2017, 9:45:44 PM
    Author     : Michael Mukolwe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FEWS &CenterDot; Experts Dashboard</title>
        <link href="../../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../../assets/css/main.css" rel="stylesheet" type="text/css"/>
    </head>
    <body style="background-color: #f9f9f9;font-family:'Oxygen-Regular'">
        <%@page import="sys.classes.*,sys.servlets.*" %>
        <%
            if (session.getAttribute("user") ==  null) {
                response.sendRedirect("../Login.jsp");
            }
        %>
        <header>
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
                                Experts Action
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu " role="menu" aria-labelledby="dropdownMenu1">
                                <li role="presentation" class="text-center"><p>Signed in as <bold>username</bold></p></li>
                                <li role="presentation" class="divider"></li>   
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="ExpertDash.jsp"><span class="glyphicon glyphicon-dashboard" style="margin-right: 20px;"></span>DASHBOARD</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="profile.jsp"><span class="glyphicon glyphicon-user" style="margin-right:  20px;"></span>PROFILE</a></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="messages.jsp"><span class="glyphicon glyphicon-envelope" style="margin-right: 20px;"></span>MESSAGES</a></li>
                                <li role="presentation" class="divider"></li>
                                <li role="presentation"><a role="menuitem" tabindex="-1" href="Logout"><span class="glyphicon glyphicon-log-out" style="margin-right: 20px;"></span> LOGOUT</a></li>
                            </ul>
                        </div>
                    </div>
                    
                </div><!-- /.container-fluid -->
            </nav>
            <!--end navbar one-->
            <div class="nav-two">
                <div class="container">
                    <ul class="nav nav-tabs" role="tablist" id="myTab">
                        <li class="active">
                            <a href="#main-page" role="tab" data-toggle="tab">
                                Expert Dashboard
                            </a>
                        </li>
                        <li class="list-sep"></li>                        
                        <li>
                            <a href="#expert-page" role="tab" data-toggle="tab">
                                Search Epidemics
                            </a>
                        </li>
                        <li class="list-sep"></li>
                        <li>
                            <a href="#blog-page" role="tab" data-toggle="tab">
                                Manage Blogs
                            </a>
                        </li>                        
                    </ul>
                </div>
            </div>
            <!--end navbar TWO-->
        </header>
        <!--middle section-->
        <div class="tab-content">
            <div class="tab-pane fade in active" id="main-page">
                <div class="container">
                    <%@include  file="main-page.jsp" %>
                </div><!-- /.container -->
            </div>
            <div id="expert-page" class="tab-pane fade">
                <div class="container">
                    <%@include  file="search-page.jsp" %>
                </div><!-- /.container -->
            </div>
            <div id="blog-page" class="tab-pane fade">
                <div class="container">
                    <%@include  file="blog-page.jsp" %>
                </div><!-- /.container -->
            </div>
        </div>
        <!--end middle section-->

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
                $('#myTab a:last').tab('show')
            })
        </script>
        <script type="text/javascript" src="../../assets/js/jquery.js"></script>
        <script type="text/javascript" src="../../assets/js/bootstrap.js"></script>
    </body>
</html>