<%-- 
    Document   : SignUp
    Created on : Apr 6, 2017, 4:27:21 PM
    Author     : Michael Mukolwe
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Farmers Epidemic System Sign Up</title>
        <link href="../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../assets/css/main.css" rel="stylesheet" type="text/css"/>
        <script language="javascript" type="text/javascript">
            
            function checkLength() {
                //password length
                if ((document.getElementById('user-password').value).length < 6) {
                    document.getElementById('help2').innerHTML = "Short Password";
                } else {
                    document.getElementById('help2').innerHTML = "";
                }
            }
            function checkMatch(inputPass) {
                // pass dont match error
                if (inputPass.value !== document.getElementById('user-password').value) {
                    document.getElementById('help2').innerHTML = "Password Don't Match";
                } else {
                    //valid match
                    document.getElementById('help2').innerHTML = "";
                }
            }

        </script>
    </head>
    <body>
        <%@page import="sys.classes.*" %>
        <%
            Error_class user_error = (Error_class) request.getAttribute("signupErr");
            if (user_error == null) {
                user_error = new Error_class();
            }
        %>
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
                    <a class="navbar-brand" href="../index.jsp"><span style="color:#5cb85c;">FEWS</span> LOGO</a>
                </div>
            </div><!-- /.container-fluid -->
        </nav>
        <div class="main-panel">
            <div class="container">
                <div class="login-brand">
                    <h2 class="text-center">Farmer Sign Up</h2>
                    <p class="text-center">Please fill in your Details Correctly:
                    </p>
                    <p class="text-center"><span class="text-danger"><%= user_error.getErrorMessage()%></span></p>
                </div>
                <!--login form-->
                <div class="panel panel-signup">
                    <div class="panel-body">
                        <form class="form account-form" method="post" action="SignUp">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="well well-sm" style="height: 200px;">
                                        User Profile <br>Image
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="text" name="user-full-name" class="form-control" id="user-email" placeholder="Full Name" tabindex="1">
                                    </div>

                                    <div class="form-group">
                                        <input type="email" name="user-email" class="form-control" id="user-email" placeholder="Email Address" tabindex="1">
                                    </div> <!-- /.form-group -->

                                    <div class="form-group">
                                        <input type="text" name="user-phone" class="form-control" id="user-email" placeholder="Phone Contact" oninput="checkNumber(this)"tabindex="1">
                                    </div> <!-- /.form-group -->
                                </div>
                            </div> <!-- /.row -->
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <!--have a collapse panel with one email filed form for the forget pass-->
                                        <input type="password" name="user-password" class="form-control" placeholder="Password" id="user-password" oninput="checkLength()"tabindex="2">
                                    </div> <!-- /.form-group -->
                                    <span class="help-block" id="help1">Choose 6 characters: mix Capital,Numbers,alphanumerics</span>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="password" name="user-con-password" class="form-control" placeholder="Confirm Password" id="user-con-password" oninput="checkMatch(this)"  tabindex="2">
                                    </div> <!-- /.form-group -->
                                </div>
                                <span class="text-danger" id="help2"></span>
                            </div>
                            <div class="form-group" >
                                <label for="get-user-location">
                                    <input type="checkbox" id="user-location" name="user-location"style="margin-right: 10px;height: 10px;margin-bottom: 0px;"> Allow to Get My Location
                                    <span> :: <a href="#">Why ?</a></span>
                                </label><span class="pull-right">Already have an Account <a class="btn-sign1" id="btn"href="Login.jsp"> Log In</a></span>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-success btn-block btn-lg" tabindex="4">
                                    Sign Up <span class="glyphicon glyphicon-check" style="margin-left: 10px;"></span></i>
                                </button>
                            </div> <!-- /.form-group -->
                        </form>                    
                        <p class="text-center"></p>

                    </div>
                </div>
            </div>
        </div>

        <!--end form-->

        <!-- Footer -->
        <footer>
            <div class="container text-center">
                <p><a href="#">Copyright &copy; kukuSoft.co.ke 2017</a></p>
                <p>Terms of Services Applied</p>
            </div>
        </footer>
        <script type="text/javascript" src="../assets/js/bootstrap.js"></script>
        <script type="text/javascript" src="../assets/js/jquery.js"></script>
    </body>
</html>
