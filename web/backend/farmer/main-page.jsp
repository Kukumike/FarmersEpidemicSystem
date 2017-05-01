<%-- 
    Document   : main-page
    Created on : Apr 7, 2017, 1:07:48 AM
    Author     : Michael Mukolwe
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page import="sys.classes.*"%>
<%
    DB_class db = new DB_class();

%>
<sql:setDataSource var='bgGet' driver='<%= db.jstlDriver()%>' url='<%= db.jstlUrl()%>' user='<%= db.jstlUser()%>'  password='<%= db.jstlPassword()%>'/>

<sql:query dataSource="${bgGet}" var="reqBlogs">
    <%= db.blogsPosted()%>
</sql:query>

<%
    Login_class user_ = (Login_class) session.getAttribute("user");
    if (user_ == null) {
        user_ = new Login_class();
    }
    String user_email = user_.getUserEmail();
    int accStatus = db.getAccountStatus(user_email);

    Sign_class user_details = (Sign_class) request.getSession().getAttribute("user_details");
    if (user_details == null) {
        user_details = new Sign_class();
    }
    String post_succ = (String) request.getAttribute("post_succ");
    if (post_succ == null) {
        post_succ = "";
    }
    String post_error = (String) request.getAttribute("post_error");
    if (post_error == null) {
        post_error = "";
    }
    String ErrorMessage = (String) request.getAttribute("ErrorMessage");
    if (ErrorMessage == null) {
        ErrorMessage = "";
    }
%>
<sql:query dataSource="${bgGet}" var="reqUsers">
    <%= db.user_Details(user_email)%>
</sql:query>

<div class="row" style="background-color: #f9f9f9;font-family:'Oxygen-Regular';" >
    <div class="col-md-3">
        <div class="well well-sm" style="margin-top: 50px;height: 250px;width: 200px;">
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
    <div class="col-md-1 clearfix"></div>

    <div class="col-md-7">
        <!--check if account is confirmed to view message or not-->
        <input type="number" class="hidden" value="<%=accStatus%>" id='acc'/>
        <!--confirmation message-->
        <div class="alert alert-warning" id="alert_status" >A confirmation email was sent to <strong><%=user_.getUserEmail()%></strong>. Please verify your account!</div>
        
        <div class="panel panel-default" style="margin-top: 20px;border-radius: 0px;box-shadow: 20px;">
            <div class="panel-heading" style="background-color: transparent;">
                <h2 class="panel-title" style="font-size: 20px;">Post an Epidemic</h2>
            </div>
            <div class="panel-body">
                <form class="form account-form" method="POST" action="PostEpidemic" style="margin-top: 20px;">
                    <div class="row">
                        <div class="col-md-7">
                            <div class="form-group">
                                <input type="text" name="blog-title" class="form-control" id="blog-title" placeholder="Epidemic Title" tabindex="1">
                            </div> <!-- /.form-group -->
                        </div>
                        <div class="col-md-5">
                            <header><p class="help-block">Enter your Epidemic here;two pictures if possible:</p></header>
                            <span class="text-danger" style="margin-bottom: 30px;"><%= ErrorMessage%></span>
                            <span class="text-success" style="margin-bottom: 30px;"><%= post_succ%></span>
                            <span class="text-danger" style="margin-bottom: 30px;"><%= post_error%></span>
                        </div>
                    </div>


                    <div class="form-group">
                        <textarea class="form-control" rows="3" maxlength="1000" name="blog-content" placeholder="Type in your post or content here"></textarea>
                    </div>
                    <!--<input type="hidden" name="email" value="michaelolukaka@gmail.com"/>-->
<!--                        <input type="hidden" name="date" value="<%= (new java.util.Date().toLocaleString())%>"/>-->

                    <div class="row">
                        <div class="col-md-7">
                            <input type="hidden" value="<%= user_.getUserEmail()%>" name="username"/>
                            <div class="form-group">
                                <label for="exampleInputFile">Photo...</label>
                                <input type="file" id="exampleInputFile" style="border-radius: 0px;height: 40px;">
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="form-group" style="margin-top: 20px;">
                                <button type="submit" class="btn btn-success btn-block btn-post pull-right" tabindex="4">
                                    Post Epidemic <span class="glyphicon glyphicon-share" style="margin-left: 10px;"></span></i>
                                </button>
                            </div> <!-- /.form-group -->
                        </div>
                    </div>

                </form> 
            </div>
        </div>

        <div class="main-content">
            <div class="panel panel-default" >
                <div class="panel-heading" style="background-color: transparent;">
                    <h2 class="panel-title" style="font-size: 20px;">Latest posted Epidemics</h2>
                </div>
                <div class="panel-body">
                    <div id="googleMap" style="height: 200px;border: 1px solid #888;margin-top: 20px;background: url('../..//assets/img/Geolocation.png');">
                    </div>
                    <br><br><br>
                    <c:forEach var="blogs" items="${reqBlogs.rows}">

                        <div class="">
                            <div class="media">
                                <a class="pull-left" href="#">
                                    <img class="media-object well well-sm" src="..." alt="epidemic photo" style="width: 80px;height: 100px;margin-right: 20px;">
                                </a>
                                <div class="media-body">
                                    <h4 class="media-heading"><c:out value="${blogs.post_title}"/></h4>
                                    <p><c:out value="${blogs.post_timestamp}"/></p>
                                    <p><c:out value="${blogs.post_desc}"/> 
                                        <a href="#">Read Profile</a></p>
                                </div>
                            </div>
                        </div>
                        <hr>
                    </c:forEach>

                </div>
            </div>
        </div>
        <ul class="pagination" style="margin-left: 350px;color: #5cb85c">
            <li class="disabled"><a href="#">&laquo;</a></li>
            <li class="active" style="background-color: #3e8f3e"><a href="#">1 <span class="sr-only">(current)</span></a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li><a href="#">&raquo;</a></li>
        </ul>
    </div>
    <div class="col-md-1 clearfix"></div>
</div>