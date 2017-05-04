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
        <link rel="icon" href="assets/img/favicon.png" type="image/x-icon">
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

            <div class="swiper-container" style="min-height: 450px;color: black;">
                <div class="swiper-wrapper" style="">
                    <div class="swiper-slide" >
                        <div class="title" >Slide 1</div>
                        <div class="subtitle">Subtitle</div>
                        <div class="text">
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                                Aliquam dictum mattis velit, sit amet faucibus felis iaculis nec. 
                                Nulla laoreet justo vitae porttitor porttitor. Suspendisse in sem j
                                usto. Integer laoreet magna nec elit suscipit, ac laoreet nibh euismod. 
                                Aliquam hendrerit lorem at elit facilisis rutrum. Ut at ullamcorper velit.
                                Nulla ligula nisi, imperdiet ut lacinia nec, tincidunt ut libero. Aenean 
                                feugiat non eros quis feugiat.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="title" >Slide 2</div>
                        <div class="subtitle" >Subtitle</div>
                        <div class="text" >
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
                                Aliquam dictum mattis velit, sit amet faucibus felis iaculis nec.
                                Nulla laoreet justo vitae porttitor porttitor. Suspendisse in sem 
                                justo. Integer laoreet magna nec elit suscipit, ac laoreet nibh euis
                                mod. Aliquam hendrerit lorem at elit facilisis rutrum. Ut at ullamco
                                rper velit. Nulla ligula nisi, imperdiet ut lacinia nec, tincidunt u
                                t libero. Aenean feugiat non eros quis feugiat.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="title" >Slide 3</div>
                        <div class="subtitle" >Subtitle</div>
                        <div class="text" >
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam dic
                                tum mattis velit, sit amet faucibus felis iaculis nec. Nulla laoreet
                                justo vitae porttitor porttitor. Suspendisse in sem justo. Integer l
                                aoreet magna nec elit suscipit, ac laoreet nibh euismod. Aliquam hend
                                rerit lorem at elit facilisis rutrum. Ut at ullamcorper velit. Nulla
                                ligula nisi, imperdiet ut lacinia nec, tincidunt ut libero. Aenean f
                                eugiat non eros quis feugiat.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="title" >Slide 4</div>
                        <div class="subtitle" >Subtitle</div>
                        <div class="text" >
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam dictu
                                m mattis velit, sit amet faucibus felis iaculis nec. Nulla laoreet j
                                usto vitae porttitor porttitor. Suspendisse in sem justo. Integer laor
                                eet magna nec elit suscipit, ac laoreet nibh euismod. Aliquam hendrerit 
                                lorem at elit facilisis rutrum. Ut at ullamcorper velit. Nulla ligula ni
                                si, imperdiet ut lacinia nec, tincidunt ut libero. Aenean feugiat non eros quis feugiat.</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="title" >Slide 5</div>
                        <div class="subtitle" >Subtitle</div>
                        <div class="text" >
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam dictu
                                m mattis velit, sit amet faucibus felis iaculis nec. Nulla laoreet justo
                                vitae porttitor porttitor. Suspendisse in sem justo. Integer laoreet mag
                                na nec elit suscipit, ac laoreet nibh euismod. Aliquam hendrerit lorem 
                                at elit facilisis rutrum. Ut at ullamcorper velit. Nulla ligula nisi, im
                                perdiet ut lacinia nec, tincidunt ut libero. Aenean feugiat non eros quis feugiat.</p>
                        </div>

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
            <div class="services" id=services" style="margin-top: 5px;">
                <div class="container">
                    <div class="service-top">
                        <h3>How It Works</h3>
                    </div>
                    <div class="services-grid">
                        <div class="row">
                            <div class="col-md-5 service-top1" >
                                <div  class="ser-top-right ser-top">
                                    <h4>Farmers</h4>
                                    <h5 style="">Create an account</h5>
                                    <p class="help-block">
                                        Farmers will be able to create an account
                                        ,then login to access system resources.
                                    </p>
                                    <h5 style="">Report an epidemic</h5>
                                    <p class="help-block">
                                        Farmers make a report of epidemic they are
                                        affected with; giving full description so that they may be helped.
                                    </p>
                                    <h5 style="">Get Notification</h5>
                                    <p>
                                        Farmers will get direct SMS notification of new Epidemic reports or Solutions to those they posted. 
                                    </p>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="col-md-1 service-top1" style="margin-top: 50px;">	
                                <img src="assets/img/steps-124c13915525542046e583ab8f0dd1bc.png" alt="" style="margin-left:20px;"/>
                            </div>
                            <div class="col-md-6 service-top1" style="padding-left: 20px;">
                                <div  class="ser-top-left ser-top">
                                    <h4>Farming Experts</h4>
                                    <h5 style="">Obtain an account</h5>
                                    <p class="help-block">
                                        Experts will get an account from Admin; be able to access their
                                        account with the credential they are given.
                                    </p>
                                    <h5 style="">Reply to an epidemic</h5>
                                    <p class="help-block">
                                        Experts will receive notification of epidemics / problems
                                        the farmers have posted and reply to them.
                                    </p>
                                    <h5 style="">Write Epidemic Blog Post</h5>
                                    <p>
                                        Experts shall be able to write about Epidemics they have encountered and solutions
                                        the farmers may want to use to protect their produce.
                                    </p>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
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
                autoplay: 5000,
                autoplayDisableOnInteraction: false

            });

        </script>
    </body>
</html>
