<%@include file="/views/components/header.jsp" %>

<section class="section-margin">
    <div class="container">
        <div class="row h-100 justify-content-center align-items-center">

            <div class="col-lg-5">
                <div class="col-md-6 offset-xl-0 col-xl-12">
                    <div class="search-wrapper"
                         style="background: url('${pageContext.request.contextPath}/static/img/reservation.png') left center no-repeat;">
                        <h3>Login</h3>

                        <form class="search-form" action="/login" method="post">
                            <div class="form-group">
                                <div class="input-group">
                                    <input type="text" class="form-control <c:out value="${not empty error ? 'is-invalid':''}"></c:out> " name="login" placeholder="Your login"
                                           required="required" pattern="[a-zA-Z0-9]+"/>
                                    <div class="input-group-append">
                                            <span class="input-group-text">
                                                <i class="ti-user"></i>
                                            </span>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <input type="password" class="form-control is-invalid" name="password"
                                           placeholder="Your password"
                                           required="required" pattern="[a-zA-Z0-9]+"/>
                                    <div class="input-group-append">
                                            <span class="input-group-text">
                                                <i class="ti-key"></i>
                                            </span>
                                    </div>
                                    <div class="invalid-feedback login-invalid-feedback">
                                        <c:out value="${error}"></c:out>
                                    </div>
                                </div>

                            </div>
                            <div class="form-group form-group-position">
                                <button class="button border-0" type="submit">Log in</button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<%@include file="/views/components/footer.jsp" %>

</html>