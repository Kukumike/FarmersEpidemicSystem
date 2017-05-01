<%-- 
    Document   : search-page
    Created on : Apr 7, 2017, 1:08:31 AM
    Author     : Michael Mukolwe
--%>
<%@page import="sys.classes.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page import="sys.classes.*"%>

<%
    //database object
    DB_class D_B = new DB_class();
    //get the search filter value
    String search_filter = (String) request.getAttribute("search_filter");
    if (search_filter == null) {
        search_filter = "";
    }
    if (session.getAttribute("user") == null) {
        response.sendRedirect("../Login.jsp");
    }

%>
<sql:setDataSource var='bgGet' driver='<%= D_B.jstlDriver()%>' url='<%= D_B.jstlUrl()%>' user='<%= D_B.jstlUser()%>'  password='<%= D_B.jstlPassword()%>'/>

<sql:query dataSource="${bgGet}" var="reqSearch">
    <%= D_B.searchEpidemic(search_filter)%>
</sql:query>

<sql:query dataSource="${bgGet}" var="reqUsers">
    <%= D_B.user_Details(user_email)%>
</sql:query>

<div class="row" style="background-color: #f9f9f9;font-family:'Oxygen-Regular'">
    <div class="col-md-3">
        <div class="well well-sm" style="margin-top: 50px;height: 200px;width: 200px; ">
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
                            <a class="btn btn-primary" style="border-radius: 0px; width: 100%;"href="settings.jsp">EDIT PROFILE</a>
                        </div>
                    </form>

                </div>
            </div>
        </c:forEach>
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
                <form class="form account-form" method="POST" action="Search">
                    <input type="hidden" name="searchFrom" value="farmSearch"/>
                    <div class="row">
                        <div class="col-md-8">
                            <div class="form-group">
                                <input type="text" class="form-control" name="inputSearch"style="width: 100%;border-radius: 0px;height: 48px;"placeholder="SEARCH EPIDEMIC" required>
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
                </form> 
            </div>
        </div>
        <div class="main-content">
            <div class="panel panel-default" >
                <div class="">
                    <p class="panel-title" style="font-size: 20px;padding-left: 15px;"><%=D_B.searchZero(search_filter)%> articles found...</p>
                </div>
                <hr>
                <div class="panel-body">
                    <%
                        if (request.getAttribute("search_filter") == null | D_B.searchZero(search_filter) == 0) {
                    %>
                    <div class="alert alert-info" role="alert">zero search result</div>
                    <%
                    } else {
                    %>
                    <c:forEach var="search" items="${reqSearch.rows}">

                        <div class="">
                            <div class="media">
                                <a class="pull-left" href="#">
                                    <img class="media-object well well-sm" src="..." alt="epidemic photo" style="width: 80px;height: 100px;margin-right: 20px;">
                                </a>
                                <div class="media-body">
                                    <h4 class="media-heading"><c:out value="${search.post_title}"/></h4>
                                    <p><c:out value="${search.post_timestamp}"/></p>
                                    <p><c:out value="${search.post_desc}"/> 
                                        <a href="#">Read Profile</a></p>
                                </div>
                            </div>
                        </div>
                        <hr>
                    </c:forEach>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>
    </div>
    <!--<div class="col-md-1 clearfix"></div>-->
</div>