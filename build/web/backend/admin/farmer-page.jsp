<%-- 
    Document   : farmer-page
    Created on : Mar 31, 2017, 1:57:31 PM
    Author     : Michael Mukolwe
--%>
<div class="row" style="">
    <div class="col-md-9">
        <div class="" style="padding-top: 30px;">
            <div class="login-brand">
                <h2 class="text-center">Search for Farmers Details</h2>
            </div>
            <!--login form-->
            <div class="panel panel-signup">
                <div class="panel-body">
                    <form class="form account-form" method="" action="">
                        <div class="row">
                            <div class="col-md-7">
                                <div class="form-group">
                                    <input type="text" class="form-control" style="width: 100%;border-radius: 0px;height: 48px;"placeholder="SEARCH FARMERS">
                                </div>
                            </div>
                            <div class="col-md-5">
                                <div class="form-group">
                                    <button type="submit" class="btn btn-success btn-block btn-lg" tabindex="4">
                                        Search Farmer <span class="glyphicon glyphicon-search" style="margin-left: 10px;"></span></i>
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
                    <hr>
                    <h4 class="">Search for Farmers Details</h4>
                    <div class="row">
                        <div class="media">
                            <a class="pull-left" href="#">
                                <img class="media-object well well-sm" src="..." alt="..." style="width: 80px;height: 100px;margin-right: 20px;">
                            </a>
                            <div class="media-body">
                                <h4 class="media-heading">Farmers Name</h4>
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
                            <a class="btn btn-primary" style="border-radius: 0px; width: 100%;"href="settings.jsp?user_email=${user.user_email}">EDIT PROFILE</a>
                        </div>
                    </form>

                </div>
            </div>
        </c:forEach>
    </div>
</div>
