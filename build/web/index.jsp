<%-- 
    Document   : index
    Created on : Apr 6, 2017, 2:52:14 PM
    Author     : Michael Mukolwe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FEWS &centerdot; Index Page</title>

        <!--css links-->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/swiper.min.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/main.css" rel="stylesheet" type="text/css"/>
        <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
        <link rel="icon" href="assets/img/favicon.ico" type="image/x-icon">
        <!-- Demo styles -->
       
    </head>
    <body>
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
                    <a class="navbar-brand" href="#"><span style="color:#5cb85c;">FEWS</span> LOGO</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li>
                            <a class="page-scroll" href="#services">HOW IT WORKS</a>
                        </li>
                        <li>
                            <a class="page-scroll" href="backend/Search.jsp">SEARCH EPIDEMICS</a>
                        </li>
                        <li class="hidden">
                            <a href="#page-top"></a>
                        </li>

                    </ul>
                    <ul class="nav navbar-nav navbar-right">

                        <%
                            if (request.getSession().getAttribute("user") == null) {
                        %>

                        <ul class="nav navbar-nav ">
                            <li><a href="backend/SignUp.jsp"><span class="glyphicon glyphicon-pencil" style="margin-right: 5px;"></span> SIGN UP</a></li>
                            <li><a href="backend/Login.jsp"><span class="glyphicon glyphicon-log-in" style="margin-right: 5px;"></span> LOGIN</a></li>
                        </ul>
                        <%
                        } else {
                        %>
                        <div class="dropdown navbar-right">
                            <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown">
                                User Action
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
                        <%
                            }
                        %>
                    </ul>

                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <div class="main-section">
            <!-- Swiper -->

            <div class="swiper-container" style="min-height: 400px;">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <img src="assets/img/jumbo/12.JPG" alt="Slide 1" class="swiper-lazy">
                    </div>
                    <div class="swiper-slide">
                        <img src="..." alt="Slide 2" class="swiper-lazy">
                    </div>
                    <div class="swiper-slide">
                        <img src="..." alt="Slide 3" class="swiper-lazy">
                    </div>
                    <div class="swiper-slide">
                        <img src="..." alt="Slide 4" class="swiper-lazy">
                    </div>
                    <div class="swiper-slide">
                        <img src="..." alt="Slide 5" class="swiper-lazy">
                    </div>
                    <div class="swiper-slide">
                        <img src="..." alt="Slide 6" class="swiper-lazy">
                    </div>
                    <div class="swiper-slide">
                        <img src="..." alt="Slide 7" class="swiper-lazy">
                    </div>
                    <div class="swiper-slide">
                        <img src="..." alt="Slide 8" class="swiper-lazy">
                    </div>
                    <div class="swiper-slide">
                        <img src="..." alt="Slide 9" class="swiper-lazy">
                    </div>
                    <div class="swiper-slide">
                        <img src="..." alt="Slide 10" class="swiper-lazy">

                    </div>
                </div>
                <!-- Add Pagination -->
                <div class="swiper-pagination"></div>
                <!-- Add Navigation -->
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>
            </div>

            <!--end jumbotron-->

            <!--service-->
            <div class="services" id=services" style="margin-top: 20px;">
                <div class="container">
                    <div class="service-top">
                        <h3>How It Works</h3>
                    </div>
                    <div class="services-grid">
                        <div class="col-md-6 service-top1">
                            <div class=" ser-grid">	
                                <a href="#" class="hi-icon hi-icon-archive glyphicon glyphicon-list" style="color:#48D1CC"> </a>
                            </div>
                            <div  class="ser-top">
                                <h4>Farming Experts</h4>
                                <p>
                                    We provide you a variety of bus carriers to choose from.
                                    If your preferred bus carrier isn't on this site, send them a
                                    join wasafiri request.We provide you a variety of bus carriers to choose from.
                                    If your preferred bus carrier isn't on this site, send them a
                                    join wasafiri request.Book a bus anywhere, anytime with a 24/7 d
                                    edicated help line to help you where stuck.

                                </p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="col-md-6 service-top1">
                            <div class=" ser-grid">	
                                <a href="#" class="hi-icon hi-icon-archive glyphicon glyphicon-usd" style="color:#696969"> </a>
                            </div>
                            <div  class="ser-top">
                                <h4>Farmers</h4>
                                <p>
                                    The cost to convenience ratio is almost non-existent. 
                                    Manage your entire booking online at almost no extra cost.
                                    We are the only online portal offering you this service, no
                                    compromises made, we give you 100%.The cost to convenience ratio is almost non-existent. 
                                    Manage your entire booking online at almost no extra cost.
                                    We are the only online portal offering you this service, no
                                    compromises made, we give you 100%.

                                </p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>

                </div>
            </div>


            <!---->
        </div>
        <!-- Footer -->
        <footer>
            <div class="container text-center">
                <p><a href="#">Copyright &copy; kukuSoft.co.ke 2017</a></p>
                <p>Terms of Services Applied</p>
            </div>
        </footer>    
        <!--        <script type="text/javascript">
                    $('.carousel').carousel({
                        interval: 2000;
                    });
                    $('.carousel').carousel('cycle');
        
                </script>-->

        <script type="text/javascript" src="assets/js/jquery.js"></script>
        <script type="text/javascript" src="assets/js/swiper.jquery.min.js"></script>
        <script type="text/javascript" src="assets/js/bootstrap.js"></script>
        <!-- Initialize Swiper -->

        <script>
            var swiper = new Swiper('.swiper-container', {
                pagination: '.swiper-pagination',
                paginationClickable: true,
                nextButton: '.swiper-button-next',
                prevButton: '.swiper-button-prev',
                loop: true,
                grabCursor: true,
                autoplay: 3500,
                autoplayDisableOnInteraction: false
            });

        </script>
    </body>
</html>
