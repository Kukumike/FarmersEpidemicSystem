<%-- 
    Document   : add-expert-page
    Created on : Mar 31, 2017, 2:56:15 PM
    Author     : Michael Mukolwe
--%>
<div class="row" style="">
    <div class="main-panel">
        <div class="container">
            <div class="login-brand">
                <h2 class="text-center">Add New Expert</h2>
                <p class="text-center">Please Fill all Fields Correctly:
                </p>
            </div>
            <!--login form-->
            <div class="panel panel-signup">
                <div class="panel-body">
                    <form class="form account-form" method="POST" action="Login">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="well well-sm" style="height: 200px;">
                                    User Profile <br>Image
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" name="user-name" class="form-control" id="user-email" placeholder="Expert Full Name" tabindex="1">
                                </div>

                                <div class="form-group">
                                    <input type="text" name="user-email" class="form-control" id="user-email" placeholder="Expert Email Address" tabindex="1">
                                </div> <!-- /.form-group -->

                                <div class="form-group">
                                    <input type="text" name="user-phone" class="form-control" id="user-email" placeholder="Expert Phone Contact" tabindex="1">
                                </div> <!-- /.form-group -->
                            </div>
                        </div> <!-- /.row -->
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <!--have a collapse panel with one email filed form for the forget pass-->
<!--                                    <input type="text" name="user-speciality" class="form-control" placeholder="Expert Speciality" id="user-password" tabindex="2">-->
                                    <select style="width:100%;height: 40px;">
                                        <option>Expert Speciality</option>
                                        <option>All</option>
                                        <option>Farming</option>
                                        <option>Animals</option>
                                        <option>Weather</option>
                                        <option>Soil</option>
                                        <option>Water</option>
                                        
                                    </select>
                                </div> <!-- /.form-group -->
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" name="user-location" class="form-control" placeholder="Expert City of Operation" id="user-password" tabindex="2">
                                </div> <!-- /.form-group -->
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <!--have a collapse panel with one email filed form for the forget pass-->
                                    <input type="password" name="user-password" class="form-control" placeholder="Password" id="user-password" tabindex="2">
                                </div> <!-- /.form-group -->
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="password" name="user-con-password" class="form-control" placeholder="Confirm Password" id="user-password" tabindex="2">
                                </div> <!-- /.form-group -->
                            </div>
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
</div>