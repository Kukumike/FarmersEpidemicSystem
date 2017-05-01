<%-- 
    Document   : search-page
    Created on : Apr 7, 2017, 12:44:09 AM
    Author     : Michael Mukolwe
--%>
<div class="row" style="background-color: #f9f9f9;font-family:'Oxygen-Regular'">
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
        <div class="panel panel-default">
            <div class="panel-body">
                <article class="module width_quarter">
                    <header><h4 style="padding-left: 5px;padding-top: 5px;">Twitter Feeds</h4></header>
                    <div class="message_list">
                        <div class="module_content">
                            <div class="message"><p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor.</p>
                                <p><strong>John Doe</strong></p></div>
                            <div class="message"><p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor.</p>
                                <p><strong>John Doe</strong></p></div>
                            <div class="message"><p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor.</p>
                                <p><strong>John Doe</strong></p></div>
                            <div class="message"><p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor.</p>
                                <p><strong>John Doe</strong></p></div>
                            <div class="message"><p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor.</p>
                                <p><strong>John Doe</strong></p></div>
                        </div>
                    </div>
                </article><!-- end of messages article -->
            </div>
        </div>
    </div>
    <!--<div class="col-md-1 clearfix"></div>-->
    <div class="col-md-9">
        <div class="panel panel-default" style="margin-top: 20px;border-radius: 0px;box-shadow: 20px;">
            <div class="panel-heading" style="background-color: transparent;">
                <h2 class="panel-title" style="font-size: 20px;">Search for Epidemic Details</h2>
            </div>
            <div class="panel-body">
                <form class="form account-form" method="POST" action="Login">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="form-group">
                                <input type="text" class="form-control" style="width: 100%;border-radius: 0px;height: 48px;"placeholder="SEARCH EPIDEMIC">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <button type="submit" class="btn btn-success btn-block btn-lg" tabindex="4" style="border-radius: 0px;">
                                    Search Epidemic <span class="glyphicon glyphicon-search" style="margin-left: 10px;"></span></i>
                                </button>
                            </div> <!-- /.form-group -->
                        </div>
                    </div>
                    <div class="">
                        <label for="get-user-location">
                            <input type="checkbox" id="get-user-location" style="margin-left: 20px;margin-right: 10px;height: 10px;margin-bottom: 0px;" value="getlocation"> Search by Name:
                        </label>
                        <label for="get-user-location">
                            <input type="checkbox" id="get-user-location" style="margin-left: 10px;margin-right: 10px;height: 10px;margin-bottom: 0px;" value="getlocation"> Search by Location:
                        </label>

                    </div>
                </form> 
            </div>
        </div>
        <div class="main-content">
            <div class="panel panel-default" >
                <div class="panel-heading" style="background-color: transparent;">
                    <h2 class="panel-title" style="font-size: 20px;">Search Results</h2>
                </div>
                <div class="panel-body">
                    <div class="">
                        <div class="media">
                            <a class="pull-left" href="#">
                                <img class="media-object well well-sm" src="..." alt="epidemic photo" style="width: 80px;height: 100px;margin-right: 20px;">
                            </a>
                            <div class="media-body">
                                <h4 class="media-heading">Blog title 1</h4>
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
                    <a href="" style="text-decoration: underline">View More</a>
                </div>
            </div>
        </div>
    </div>
    <!--<div class="col-md-1 clearfix"></div>-->
</div>