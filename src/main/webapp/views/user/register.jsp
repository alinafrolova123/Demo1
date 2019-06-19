<%@ page contentType=" text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
        <title>ItalianFood Restaurant - Home</title>
        <link rel="icon" href="${pageContext.request.contextPath}/static/img/Fevicon.png" type="image/png"/>

        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/vendors/bootstrap/bootstrap.min.css"/>
        <link rel="stylesheet"
              href="${pageContext.request.contextPath}/static/vendors/themify-icons/themify-icons.css"/>
        <link rel="stylesheet"
              href="${pageContext.request.contextPath}/static/vendors/owl-carousel/owl.theme.default.min.css"/>
        <link rel="stylesheet"
              href="${pageContext.request.contextPath}/static/vendors/owl-carousel/owl.carousel.min.css"/>
        <link rel="stylesheet"
              href="${pageContext.request.contextPath}/static/vendors/Magnific-Popup/magnific-popup.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css"/>
    </head>

    <!--================ Header Menu Area start =================-->
    <header class="header_area">
        <div class="main_menu">
            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="container box_1620">
                    <a class="navbar-brand logo" href="${pageContext.request.contextPath}/views/user/index.jsp">
                        <img src="/static/img/2Restoran1.png" alt=""/>
                    </a>

                    <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                        <ul class="nav navbar-nav menu_nav justify-content-end">
                            <li class="nav-item active">
                                <a class="nav-link" href="${pageContext.request.contextPath}/views/user/index.jsp">
                                    Home
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath}/views/user/about.jsp">
                                    About
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath}/views/user/menu.jsp">Menu
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="${pageContext.request.contextPath}/views/user/contact.jsp">
                                    Contact
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class=" button button-shadow mt-2 mt-lg-4"
                                   href="${pageContext.request.contextPath}/views/user/login.jsp">Login
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class=" button button-shadow mt-2 mt-lg-4"
                                   href="${pageContext.request.contextPath}/views/user/register.jsp">Registration
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </header>
    <!--================Header Menu Area =================-->
    <body>


        <section class="section-margin">
            <div class="container">
                <div class="row h-100 justify-content-center align-items-center">

                    <div class="col-lg-5">
                        <div class="col-md-6 offset-xl-0 col-xl-12">
                            <div class="search-wrapper" style="background: url('${pageContext.request.contextPath}/static/img/reservation.png') left center no-repeat;">
                                <h3>Registration</h3>
                                <img src="${pageContext.request.contextPath}/static/img/reservation.png">
                                <form class="search-form" action="#">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <input type="text" class="form-control" placeholder="Your Name"
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
                                            <input type="text" class="form-control" placeholder="Your Surname"
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
                                            <input type="tel" class="form-control" placeholder="Phone Number"
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
                                            <input type="text" class="form-control" placeholder="Login"
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
                                            <input type="text" class="form-control" placeholder="Password"
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
    <!-- ================ start footer Area ================= -->
    <!-- ================ start footer Area ================= -->
    <footer class="footer-area section-gap">
        <div class="container">
            <div class="row">
                <div class="col-xl-8 col-sm-6 mb-6 mb-xl-0 single-footer-widget">
                    <h4>Contacts</h4>
                    <ul>
                        <li><img src="/static/img/2Restoran1.png" alt=""></li>
                        <li>Phone number: 00 (440) 9865 562<br>Mon to Fri 9am to 6pm</br></li>
                        <li>Address: West 29th Street, New York. <br>Rosemead, CA 91770</br></li>
                    </ul>
                </div>

                <div class="col-xl-4 col-md-6 mb-6 mb-xl-0 single-footer-widget">
                    <h4>Newsletter</h4>
                    <p>Leave your email. We`ll send you ouy new offers.</p>

                    <div class="form-wrap" id="mc_embed_signup">
                        <form target="_blank"
                              action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
                              method="get">
                            <div class="input-group">
                                <input type="email" class="form-control" name="EMAIL" placeholder="Your Email Address"
                                       onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email Address '">
                                <div class="input-group-append">
                                    <button class="btn click-btn" type="submit">
                                        <i class="ti-arrow-right"></i>
                                    </button>
                                </div>
                            </div>
                            <div style="position: absolute; left: -5000px;">
                                <input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
                            </div>
                            <div class="info"></div>
                        </form>
                    </div>

                </div>
                <div class="col-xl-12 col-md-12 mb-12 mb-xl-0 align-items-center text-center text-lg-center">
                    <p>
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                        All rights reserved.
                    </p>
                </div>
            </div>
        </div>
    </footer>
    <!-- ================ End footer Area ================= -->


    <script src="${pageContext.request.contextPath}/static/vendors/jquery/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/vendors/owl-carousel/owl.carousel.min.js"></script>


    <script src="${pageContext.request.contextPath}/static/vendors/bootstrap/bootstrap.bundle.min.js"></script>

    <script src="${pageContext.request.contextPath}/static/vendors/nice-select/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/vendors/Magnific-Popup/jquery.magnific-popup.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/jquery.ajaxchimp.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/mail-script.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/main.js"></script>


</html>