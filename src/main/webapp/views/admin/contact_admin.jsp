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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/vendors/themify-icons/themify-icons.css"/>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/static/vendors/owl-carousel/owl.theme.default.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/vendors/owl-carousel/owl.carousel.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/vendors/Magnific-Popup/magnific-popup.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css"/>
</head>

<!--================ Header Menu Area start =================-->
    <header class="header_area">
    <div class="about_admin">
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container box_1620">
                <button type="button" class="btn red-button sidebarCollapse">
                    <i class="fas fa-align-left"/>
                    <span>
                        <i class="ti-menu"/>
                    </span>
                </button>
                <a class="navbar-brand logo" href="${pageContext.request.contextPath}/views/user/index.jsp">
                    <img src="/static/img/2Restoran1.png" alt=""/>
                </a>

                <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                    <ul class="nav navbar-nav menu_nav justify-content-end">
                        <li class="nav-item active">
                            <a class="nav-link" href="${pageContext.request.contextPath}/views/admin/index_admin.jsp">
                                Home
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/views/admin/about_admin.jsp">
                                About
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/views/admin/menu_admin.jsp">
                                Menu
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/views/admin/contact_admin.jsp">
                                Contact
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class=" button button-shadow mt-2 mt-lg-4"
                               href="${pageContext.request.contextPath}/views/user/login.jsp">Log out
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</header>
<!--================Header Menu Area =================-->


    <nav id="sidebar" class="active">
    <div class="sidebar-header">


        <div class="close-icon sidebarCollapse">
            <button type="button" class="btn red-button">
                <i class="ti-close"></i>
            </button>
        </div>

    </div>

    <ul class="list-unstyled components ">
        <li>
            <a href="${pageContext.request.contextPath}/views/admin/user.jsp">Users</a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/views/admin/dishes.jsp">Menu dishes</a>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/views/admin/user_emails.jsp">Left emails</a>
        </li>
    </ul>
</nav>
<!-- ================ contact section start ================= -->
    <body>
    <section class="section-margin">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <h1 class="hero-title">Contact Us</h1>
                    <div class="media contact-info">
                        <span class="contact-info__icon">
                            <i class="ti-home"></i>
                        </span>
                        <div class="media-body">
                            <h3>West 29th Street, New York.</h3>
                            <p>Rosemead, CA 91770</p>
                        </div>
                    </div>
                    <div class="media contact-info">
                        <span class="contact-info__icon">
                            <i class="ti-tablet"></i>
                        </span>
                        <div class="media-body">
                            <h3>
                                <a href="tel:454545654">00 (440) 9865 562</a>
                            </h3>
                            <p>Mon to Fri 9am to 6pm</p>
                        </div>
                    </div>
                    <div class="media contact-info">
                        <span class="contact-info__icon">
                            <i class="ti-email"></i>
                        </span>
                        <div class="media-body">
                            <h3>
                                <a href="mailto:support@colorlib.com">support@colorlib.com</a>
                            </h3>
                            <p>Send us your query anytime!</p>
                        </div>
                    </div>
                    <ul class="hero-info d-none d-md-block">
                        <li>
                            <img src="${pageContext.request.contextPath}/static/img/banner/fas-service-icon.png" alt=""/>
                            <h4>Fast Service</h4>
                        </li>
                        <li>
                            <img src="${pageContext.request.contextPath}/static/img/banner/fresh-food-icon.png" alt=""/>
                            <h4>Fresh Food</h4>
                        </li>
                        <li>
                            <img src="${pageContext.request.contextPath}/static/img/banner/support-icon.png" alt=""/>
                            <h4>24/7 Support</h4>
                        </li>
                    </ul>
                </div>

                <div class="col-lg-6">
                    <img class="img-fluid" src="${pageContext.request.contextPath}/static/img/banner/2.jpg" alt=""/>
                </div>
            </div>
        </div>
    </section>
    <!-- ================ contact section end ================= -->
    <section class="section-margin">
        <div class="container">
            <div class="row">
                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d3022.5206510405783!2d-73.99570768509426!3d40.75057204319274!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sru!2sua!4v1560341672363!5m2!1sru!2sua"
                        width=100% height=400px frameborder="0" style="border:0" allowfullscreen/>

        </div>
    </div>
</section>
</body>

<!-- ================ start footer Area ================= -->
    <footer class="footer-area section-gap">
    <div class="container">
        <div class="row">
            <div class="col-xl-8 col-sm-6 mb-6 mb-xl-0 single-footer-widget">
                <h4>Contacts</h4>
                <ul>
                    <li><img src="${pageContext.request.contextPath}/static/img/2Restoran1.png" alt=""/></li>
                    <li>Phone number: 00 (440) 9865 562<br/>Mon to Fri 9am to 6pm<br/></li>
                    <li>Address: West 29th Street, New York. <br/>Rosemead, CA 91770<br/></li>
                </ul>
            </div>

            <div class="col-xl-4 col-md-6 mb-6 mb-xl-0 single-footer-widget">
                <h4>Newsletter</h4>
                <p>Leave your email. We`ll send you our new offers.</p>

                <div class="form-wrap" id="mc_embed_signup">
                    <form target="_blank"
                          action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
                          method="get">
                        <div class="input-group">
                            <input type="email" class="form-control" name="EMAIL" placeholder="Your Email Address"
                                   onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email Address '"/>
                            <div class="input-group-append">
                                <button class="btn click-btn" type="submit">
                                    <i class="ti-arrow-right"></i>
                                </button>
                            </div>
                        </div>
                        <div style="position: absolute; left: -5000px;">
                            <input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text"/>
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