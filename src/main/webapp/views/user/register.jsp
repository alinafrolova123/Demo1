
    <%@include file="/views/components/header.jsp"%>

    <body>


        <section class="section-margin">
            <div class="container">
                <div class="row h-100 justify-content-center align-items-center">

                    <div class="col-lg-5">
                        <div class="col-md-6 offset-xl-0 col-xl-12">
                            <div class="search-wrapper" style="background: url('${pageContext.request.contextPath}/static/img/reservation.png') left center no-repeat;">
                                <h3>Registration</h3>
                                <form class="search-form" action="registration" method = "post">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <input type="text" class="form-control" name = "name"  placeholder="Your Name"
                                                   required="required"/>
                                            <div class="input-group-append">
                                                <span class="input-group-text">
                                                    <i class="ti-user"></i>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <input type="text" class="form-control" name = "surname" placeholder="Your Surname"
                                                   required="required"/>
                                            <div class="input-group-append">
                                                <span class="input-group-text">
                                                    <i class="ti-user"></i>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <input type="tel" class="form-control <c:out value="${not empty error1 ? 'is-invalid':''}"></c:out>" name = "phone_number" placeholder="Phone Number"
                                                   pattern="^\d{4}-\d{3}-\d{4}$" required="required"/>
                                            <div class="input-group-append">
                                                <span class="input-group-text">
                                                    <i class="ti-mobile"></i>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <input type="text" class="form-control" name = "username" placeholder="Login"
                                                   pattern="[a-zA-Z0-9]+" required="required"/>
                                            <div class="input-group-append">
                                                <span class="input-group-text">
                                                    <i class="ti-user"></i>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group">
                                            <input type="password" class="form-control" name = "password" placeholder="Password"
                                                   pattern="[a-zA-Z0-9]+" required="required"/>
                                            <div class="input-group-append">
                                                <span class="input-group-text">
                                                    <i class="ti-key"></i>
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group form-group-position">
                                        <button class="button border-0" type="submit">Register</button>
                                    </div>
                                </form>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>

    <%@include file="/views/components/footer.jsp"%>


</html>