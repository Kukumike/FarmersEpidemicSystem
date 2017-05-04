<%-- 
    Document   : expert-page
    Created on : Mar 31, 2017, 1:57:16 PM
    Author     : Michael Mukolwe
--%>

<div class="container" style="margin-top: 50px;">
    <div class="row">
        <div class="col-md-3">
            <div class="list-group" role="tablist" id="myTab">
                <a href="#" class="list-group-item disabled">
                    Manage Experts
                </a>
                <a href="#add_experts" class="list-group-item" role="tab" data-toggle="tab">Add Experts</a>
                <a href="#view_experts" class="list-group-item" role="tab" data-toggle="tab">View Experts</a>
            </div>
        </div>
        <div class="col-md-9">
            <div class="tab-content">
                <div class="tab-pane fade in active" id="add_experts">
                    <div class="panel panel-default">
                        <div class="panel-heading"style="background-color: transparent;">
                            <h3 class="panel-title" style="font-size: 20px;">Add New Expert</h3>
                        </div>
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
                                                <input type="text" name="user-name" class="form-control" id="user-email" placeholder="Full Name" tabindex="1">
                                            </div>

                                            <div class="form-group">
                                                <input type="text" name="user-email" class="form-control" id="user-email" placeholder="Email Address" tabindex="1">
                                            </div> <!-- /.form-group -->

                                            <div class="form-group">
                                                <input type="text" name="user-phone" class="form-control" id="user-email" placeholder="Phone Contact" tabindex="1">
                                            </div> <!-- /.form-group -->
                                        </div>
                                    </div> <!-- /.row -->
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <!--have a collapse panel with one email filed form for the forget pass-->
                                                <!--<input type="text" name="user-speciality" class="form-control" placeholder="Expert Speciality" id="user-password" tabindex="2">-->
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
                                                <input type="text" name="user-location" class="form-control" placeholder="City of Operation" id="user-password" tabindex="2">
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
                            </div>
                        </div>
                    </div>
                </div><!--end tab one-->
                <div class="tab-pane fade" id="view_experts">
                    <div class="panel panel-default" style="min-height: 430px;">
                        <div class="panel-heading"style="background-color: transparent;">
                            <h3 class="panel-title" style="font-size: 20px;">Search for Expert Details</h3>
                        </div>
                        <div class="panel panel-signup">
                            <div class="panel-body">
                                <form class="form account-form" method="" action="">
                                    <div class="row">
                                        <div class="col-md-8">
                                            <div class="form-group">
                                                <input type="text" class="form-control" style="width: 100%;border-radius: 0px;height: 48px;"placeholder="SEARCH FARMERS">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <button type="submit" class="btn btn-success btn-block btn-lg" tabindex="4">
                                                    Search Expert <span class="glyphicon glyphicon-search" style="margin-left: 10px;"></span></i>
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
                                        <label for="get-user-location">
                                            <input type="checkbox" id="get-user-location" style="margin-left: 10px;margin-right: 10px;height: 10px;margin-bottom: 0px;" value="getlocation"> Search by Speciality:
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
            </div><!--end tab two-->
        </div><!--end tab content-->
    </div>
</div><!--end row-->
</div>
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
<script type="text/javascript" src="../../assets/js/jquery.js"></script>
<script type="text/javascript" src="../../assets/js/bootstrap.js"></script>