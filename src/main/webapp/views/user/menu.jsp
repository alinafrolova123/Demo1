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
                <div class="row">
                    <div class="col-lg-6">


                        <h1 class="hero-title">Food Menu</h1>
                        <p>In our menu you will find the most delicious dishes of Italian cuisine,<br
                                class="d-none d-xl-block"/>which you will definitely like. Choose and order directly on
                            our site!
                        </p>
                        <ul class="hero-info d-none d-lg-block">
                            <li>
                                <img src="${pageContext.request.contextPath}/static/img/banner/fas-service-icon.png"
                                     alt=""/>
                                <h4>Fast Service</h4>
                            </li>
                            <li>
                                <img src="${pageContext.request.contextPath}/static/img/banner/fresh-food-icon.png"
                                     alt=""/>
                                <h4>Fresh Food</h4>
                            </li>
                            <li>
                                <img src="${pageContext.request.contextPath}/static/img/banner/support-icon.png"
                                     alt=""/>
                                <h4>24/7 Support</h4>
                            </li>
                        </ul>
                    </div>

                    <div class="col-lg-6">
                        <img class="img-fluid" src="${pageContext.request.contextPath}/static/img/banner/3.png" alt=""/>
                    </div>
                </div>
            </div>
        </section>


        <!--================Food menu section start =================-->
        <section class="section-margin">
            <div class="container">
                <div class="section-intro mb-75px">
                    <h4 class="intro-title">Food Menu</h4>
                </div>
                <div class="row">

                    <div class="col-lg-6">
                        <div class="media align-items-center food-card">
                            <div class="row">
                                <div class="col-lg-4">
                                    <img class="mr-3 mr-sm-4 img-menu-width"
                                         src="${pageContext.request.contextPath}/static/img/menu/1.jpg" alt=""/>
                                </div>
                                <div class="col-lg-8 ">
                                    <div class="media-body">
                                        <div class="d-flex justify-content-between food-card-title">
                                            <h4>Tiramisu</h4>
                                            <h3 class="price-tag">$32</h3>
                                        </div>
                                        <p>Whales and darkness moving form cattle</p>
                                    </div>
                                </div>
                                <div class="col-lg-10">
                                </div>
                                <div class="col-lg-2">
                                    <div class="quantity">
                                        <button class="btn click-btn button round-button" disabled="">
                                            <i
                                                    class="ti-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="media align-items-center food-card">
                            <div class="row">
                                <div class="col-lg-4">
                                    <img class="mr-3 mr-sm-4 img-menu-width"
                                         src="${pageContext.request.contextPath}/static/img/menu/2.jpg" alt=""/>
                                </div>
                                <div class="col-lg-8 ">
                                    <div class="media-body">
                                        <div class="d-flex justify-content-between food-card-title">
                                            <h4>Spaghetti alle vongole</h4>
                                            <h3 class="price-tag">$50</h3>
                                        </div>
                                        <p>Whales and darkness moving form cattle</p>
                                    </div>
                                </div>
                                <div class="col-lg-10">
                                </div>
                                <div class="col-lg-2">
                                    <div class="quantity">
                                        <button class="btn click-btn button round-button" disabled="">
                                            <i
                                                    class="ti-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="media align-items-center food-card">
                            <div class="row">
                                <div class="col-lg-4">
                                    <img class="mr-3 mr-sm-4 img-menu-width"
                                         src="${pageContext.request.contextPath}/static/img/menu/3.jpg" alt=""/>
                                </div>
                                <div class="col-lg-8 ">
                                    <div class="media-body">
                                        <div class="d-flex justify-content-between food-card-title">
                                            <h4>Minestrone</h4>
                                            <h3 class="price-tag">$43</h3>
                                        </div>
                                        <p>Whales and darkness moving form cattle</p>
                                    </div>
                                </div>
                                <div class="col-lg-10">
                                </div>
                                <div class="col-lg-2">
                                    <div class="quantity">
                                        <button class="btn click-btn button round-button" disabled="">
                                            <i
                                                    class="ti-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="media align-items-center food-card">
                            <div class="row">
                                <div class="col-lg-4">
                                    <img class="mr-3 mr-sm-4 img-menu-width"
                                         src="${pageContext.request.contextPath}/static/img/menu/4.jpg" alt=""/>
                                </div>
                                <div class="col-lg-8 ">
                                    <div class="media-body">
                                        <div class="d-flex justify-content-between food-card-title">
                                            <h4>Calzone</h4>
                                            <h3 class="price-tag">$25</h3>
                                        </div>
                                        <p>Whales and darkness moving form cattle</p>
                                    </div>
                                </div>
                                <div class="col-lg-10">
                                </div>
                                <div class="col-lg-2">
                                    <div class="quantity">
                                        <button class="btn click-btn button round-button" disabled="">
                                            <i
                                                    class="ti-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="media align-items-center food-card">
                            <div class="row">
                                <div class="col-lg-4">
                                    <img class="mr-3 mr-sm-4 img-menu-width"
                                         src="${pageContext.request.contextPath}/static/img/menu/5.jpg" alt=""/>
                                </div>
                                <div class="col-lg-8 ">
                                    <div class="media-body">
                                        <div class="d-flex justify-content-between food-card-title">
                                            <h4>Neapolitan pizza</h4>
                                            <h3 class="price-tag">$30</h3>
                                        </div>
                                        <p>Whales and darkness moving form cattle</p>
                                    </div>
                                </div>
                                <div class="col-lg-10">
                                </div>
                                <div class="col-lg-2">
                                    <div class="quantity">
                                        <button class="btn click-btn button round-button" disabled="">
                                            <i
                                                    class="ti-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="media align-items-center food-card">
                            <div class="row">
                                <div class="col-lg-4">
                                    <img class="mr-3 mr-sm-4 img-menu-width"
                                         src="${pageContext.request.contextPath}/static/img/menu/6.jpg" alt=""/>
                                </div>
                                <div class="col-lg-8 ">
                                    <div class="media-body">
                                        <div class="d-flex justify-content-between food-card-title">
                                            <h4>Arancine</h4>
                                            <h3 class="price-tag">$20</h3>
                                        </div>
                                        <p>Whales and darkness moving form cattle</p>
                                    </div>
                                </div>
                                <div class="col-lg-10">
                                </div>
                                <div class="col-lg-2">
                                    <div class="quantity">
                                        <button class="btn click-btn button round-button" disabled="">
                                            <i
                                                    class="ti-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="media align-items-center food-card">
                            <div class="row">
                                <div class="col-lg-4">
                                    <img class="mr-3 mr-sm-4 img-menu-width"
                                         src="${pageContext.request.contextPath}/static/img/menu/7.jpg" alt=""/>
                                </div>
                                <div class="col-lg-8 ">
                                    <div class="media-body">
                                        <div class="d-flex justify-content-between food-card-title">
                                            <h4>Risotto</h4>
                                            <h3 class="price-tag">$34</h3>
                                        </div>
                                        <p>Whales and darkness moving form cattle</p>
                                    </div>
                                </div>
                                <div class="col-lg-10">
                                </div>
                                <div class="col-lg-2">
                                    <div class="quantity">
                                        <button class="btn click-btn button round-button" disabled="">
                                            <i
                                                    class="ti-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="media align-items-center food-card">
                            <div class="row">
                                <div class="col-lg-4">
                                    <img class="mr-3 mr-sm-4 img-menu-width"
                                         src="${pageContext.request.contextPath}/static/img/menu/8.jpg" alt=""/>
                                </div>
                                <div class="col-lg-8 ">
                                    <div class="media-body">
                                        <div class="d-flex justify-content-between food-card-title">
                                            <h4>Cacciucco</h4>
                                            <h3 class="price-tag">$60</h3>
                                        </div>
                                        <p>Whales and darkness moving form cattle</p>
                                    </div>
                                </div>
                                <div class="col-lg-10">
                                </div>
                                <div class="col-lg-2">
                                    <div class="quantity">
                                        <button class="btn click-btn button round-button" disabled="">
                                            <i
                                                    class="ti-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="media align-items-center food-card">
                            <div class="row">
                                <div class="col-lg-4">
                                    <img class="mr-3 mr-sm-4 img-menu-width"
                                         src="${pageContext.request.contextPath}/static/img/menu/9.jpg" alt=""/>
                                </div>
                                <div class="col-lg-8 ">
                                    <div class="media-body">
                                        <div class="d-flex justify-content-between food-card-title">
                                            <h4>Cappon magro</h4>
                                            <h3 class="price-tag">$18</h3>
                                        </div>
                                        <p>Whales and darkness moving form cattle</p>
                                    </div>
                                </div>
                                <div class="col-lg-10">
                                </div>
                                <div class="col-lg-2">
                                    <div class="quantity">
                                        <button class="btn click-btn button round-button" disabled="">
                                            <i
                                                    class="ti-plus"></i>

                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                <div class="col-lg-6">
                    <div class="media align-items-center food-card">
                        <div class="row">
                            <div class="col-lg-4">
                                <img class="mr-3 mr-sm-4 img-menu-width"
                                     src="${pageContext.request.contextPath}/static/img/menu/10.jpg" alt=""/>
                            </div>
                            <div class="col-lg-8 ">
                                <div class="media-body">
                                    <div class="d-flex justify-content-between food-card-title">
                                        <h4>Rabbit cacciatore</h4>
                                        <h3 class="price-tag">$28</h3>
                                    </div>
                                    <p>Whales and darkness moving form cattle</p>
                                </div>
                            </div>
                            <div class="col-lg-10">
                            </div>
                            <div class="col-lg-2">
                                <div class="quantity">
                                    <button class="btn click-btn button round-button" disabled="">
                                        <i
                                                class="ti-plus"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="media align-items-center food-card">
                        <div class="row">
                            <div class="col-lg-4">
                                <img class="mr-3 mr-sm-4 img-menu-width"
                                     src="${pageContext.request.contextPath}/static/img/menu/11.jpg" alt=""/>
                            </div>
                            <div class="col-lg-8 ">
                                <div class="media-body">
                                    <div class="d-flex justify-content-between food-card-title">
                                        <h4>Pasta e fagioli</h4>
                                        <h3 class="price-tag">$56</h3>
                                    </div>
                                    <p>Whales and darkness moving form cattle</p>
                                </div>
                            </div>
                            <div class="col-lg-10">
                            </div>
                            <div class="col-lg-2">
                                <div class="quantity">
                                    <button class="btn click-btn button round-button" disabled="">
                                        <i
                                                class="ti-plus"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="media align-items-center food-card">
                        <div class="row">
                            <div class="col-lg-4">
                                <img class="mr-3 mr-sm- img-menu-width"
                                     src="${pageContext.request.contextPath}/static/img/menu/12.jpg" alt=""/>
                            </div>
                            <div class="col-lg-8 ">
                                <div class="media-body">
                                    <div class="d-flex justify-content-between food-card-title">
                                        <h4>Pinzimonio</h4>
                                        <h3 class="price-tag">$27</h3>
                                    </div>
                                    <p>Whales and darkness moving form cattle</p>
                                </div>
                            </div>
                            <div class="col-lg-10">
                            </div>
                            <div class="col-lg-2">
                                <div class="quantity">
                                    <button class="btn click-btn button round-button" disabled="">
                                        <i
                                                class="ti-plus"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </section>
        <!--================Food menu section end =================-->
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