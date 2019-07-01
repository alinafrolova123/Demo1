<%@ page import="com.softserve.entities.User" %>
<%@include file="/views/components/header2.jsp"%>
<!--================Hero Banner Section start =================-->
<body>
<section class="section-margin">
    <div class="container">
        <div class="row">
            <div class="section-intro" style="width:100%;">
                <h4 class="intro-title">Your profile</h4>
            </div>
            <div class="col-lg-8 col-md-8 col-xs-12" style="width: 80%; margin-right: 10%; margin-left: 10%;">
                <div class="panel border-red">
                    <div class="panel-body">
                        <ul id="myTab" class="nav nav-pills">
                            <li class="active"><a href="#detail" data-toggle="tab" style="margin-left: 20px;  margin-right: 20px; float: left"><button type="button" class="btn btn-danger">About User</button></a></li>
                            <li class=""><a href="#contact" data-toggle="tab"  style="margin-left: 20px; margin-right: 20px; float: right"><button type="button" class="btn btn-danger">Edit Profile</button></a></li>
                        </ul>
                        <c:set var="name" value="name" scope="request" />
                        <div id="myTabContent" class="tab-content">
                            <hr>
                            <div class="tab-pane fade active show in" id="detail">
                                <table class="table table-th-block">
                                    <tbody>
                                    <tr><td class="active">Your Name:</td><td>${Auth.user.name}</td></tr>
                                    <tr><td class="active">Your Surname:</td><td>${Auth.user.surname}</td></tr>
                                    <tr><td class="active">Your Phone Number:</td><td>${Auth.user.phone_number}</td></tr>
                                    <tr><td class="active">Your Login:</td><td>${Auth.user.login}</td></tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="tab-pane fade" id="contact">
                                <p></p>
                                <form role="form" method="post" action="/user/myprofile">
                                    <input type="hidden" value="${Auth.user.idUser}" name="id" />
                                    <div class="form-group">
                                        <label>Your Name:</label>
                                        <input name="name" class="form-control rounded" value="${Auth.user.name}" />
                                    </div>
                                    <div class="form-group">
                                        <label>Your Surname:</label>
                                        <input name="surname" class="form-control rounded" value="${Auth.user.surname}" />
                                    </div>
                                    <div class="form-group">
                                        <label>Your Phone Number:</label>
                                        <input name="phone_number" class="form-control rounded" value="${Auth.user.phone_number}" />
                                    </div>
                                    <div class="form-group">
                                        <label>Your Login</label>
                                        <input name="login" class="form-control rounded" value="${Auth.user.login}" />
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-success" >Update</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

        <!--================About Section End =================-->
</body>

<%@include file="/views/components/footer.jsp" %>


</html>