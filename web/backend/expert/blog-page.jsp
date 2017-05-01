<%-- 
    Document   : blog-page
    Created on : Apr 7, 2017, 12:35:15 AM
    Author     : Michael Mukolwe
--%>
<div class="row" style="">
    <div class="main-panel">
        <div class="container">
            <div class="login-brand">
                <h2 style="margin-left: 200px;">Post your Blog Here:</h2>
            </div>
            <p class="help-block"  style="margin-left: 200px;">NB: These are blogs to help farmers understand <br>more about certain
                plants,animals,epidemics,seasons e.t.c.</p>
            <!--login form-->
            <div class="panel panel-signup">
                <div class="panel-body">
                    <form class="form account-form" method="POST" action="Login">
                        <div class="row">
                            <div class="form-group">
                                <textarea class="form-control" rows="3"></textarea>                                </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary btn-block pull-right" tabindex="4">
                                    Post Blog <span class="glyphicon glyphicon-share" style="margin-left: 10px;"></span></i>
                                </button>
                            </div> <!-- /.form-group -->
                        </div>
                    </form>   
                    <hr>
                    <hr>
                    <h4 class="">Recent Blogs</h4>
                    <div class="row"
                         <div class="media">
                            <a class="pull-left" href="#">
                                <img class="media-object well well-sm" src="..." alt="..." style="width: 80px;height: 100px;margin-right: 20px;">
                            </a>
                            <div class="media-body">
                                <h4 class="media-heading">Blog Name</h4>
                                <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel
                                    metus scelerisque ante sollicitudin commodo. Cras purus odio, 
                                    vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum
                                    nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                                    <a href="#">Read Profile</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>