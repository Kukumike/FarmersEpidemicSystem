<%-- 
    Document   : expert-page
    Created on : Mar 31, 2017, 1:57:16 PM
    Author     : Michael Mukolwe
--%>

<div class="container" style="margin-top: 10px;">
    <ul class="nav nav-tabs" role="tablist" id="myTab">
        <!--<ul class="list-unstyled list-inline center-block" id="myTab">-->
        <li class="active">
            <a href="#add-page" role="tab" data-toggle="tab">
                Add Experts         
            </a>
        </li>
        <!--<li class="list-sep"></li>-->                        
        <li>
            <a href="#view-page" role="tab" data-toggle="tab">
                View Experts
            </a>
        </li>
    </ul>
</div>
<div class="tab-content" style="">
    <div class="tab-pane fade in active" id="add-page">
        <div class="container">
            <%@include  file="add-expert-page.jsp" %>
        </div><!-- /.container -->
    </div>
    <div id="view-page" class="tab-pane fade">
        <div class="container">
            <%@include  file="view-expert-page.jsp" %>
        </div><!-- /.container -->
    </div>
</div>
<script type="text/javascript">
    $(function () {
        $('#myTab a:last').tab('show')
    })
</script>