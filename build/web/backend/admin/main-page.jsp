<%-- 
    Document   : main-page
    Created on : Mar 31, 2017, 1:56:07 PM
    Author     : Michael Mukolwe
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page import="sys.classes.*"%>
<%
    DB_class db = new DB_class();

    Login_class user_ = (Login_class) session.getAttribute("user");
    if (user_ == null) {
        user_ = new Login_class();
    }
    String user_email = user_.getUserEmail();

%>
<sql:setDataSource var='bgGet' driver='<%= db.jstlDriver()%>' url='<%= db.jstlUrl()%>' user='<%= db.jstlUser()%>'  password='<%= db.jstlPassword()%>'/>

<sql:query dataSource="${bgGet}" var="reqBlogs">
    <%= db.blogsPosted()%>
</sql:query>

<sql:query dataSource="${bgGet}" var="reqUsers">
    <%= db.user_Details(user_email)%>
</sql:query>

<div class="row" >
    <div class="col-md-9 ">
        <div class="" style="margin-top: 50px;">
            <div class="panel panel-default">
                <div class="panel-heading"><header><h4>Current System Statistics</h4></header>
                </div>
                <div class="panel-body panel-stats">
                    <div class="row" style="margin-top: 10px; ">
                        <div class="col-md-3 well well-sm" style="background-color: #3e8f3e;">
                            <h4>Current Experts</h4>
                            <p class="overview_count">1,876</p>
                        </div>
                        <div class="col-md-3 well well-sm"style="background-color: #66afe9;">
                            <h4>Current Farmers</h4>
                            <p class="overview_count">3,446</p>

                        </div>
                        <div class="col-md-3 well well-sm" style="background-color: #ff0;">
                            <h4>Current Epidemic Post</h4>
                            <p class="overview_count">200</p>

                        </div>
                        <div class="col-md-3 well well-sm" style="background-color: #b2dba1;">
                            <h4>Current Experts Blogs</h4>
                            <p class="overview_count">500</p>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="main-content">
            <div class="panel panel-default">
                <div class="panel-body">
                    <header><h4 style="padding-top: 5px;margin-bottom: 20px;">Latest Epidemic Post</h4></header>
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
    <div class="col-md-3">
        <div class="well well-sm" style="margin-top: 50px;height: 200px;width: 200px;">
            <p class="text-center" style="margin-top: 50px;">User Profile <br>Image</p>
        </div>
        <hr>
        <c:forEach var="user" items="${reqUsers.rows}">

            <div class="panel panel-default" >
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
