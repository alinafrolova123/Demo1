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
                                <a class="nav-link"
                                   href="${pageContext.request.contextPath}/views/admin/index_admin.jsp">
                                    Home
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link"
                                   href="${pageContext.request.contextPath}/views/admin/about_admin.jsp">
                                    About
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link"
                                   href="${pageContext.request.contextPath}/views/admin/menu_admin.jsp">
                                    Menu
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link"
                                   href="${pageContext.request.contextPath}/views/admin/contact_admin.jsp">
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


    <body>
        <section class="section-margin">
            <section class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="panel body-default">
                            <div class="border-red">
                                <div class="row">
                                    <div class="col-md-1 col-xl-1">
                                        <label>№</label>
                                    </div>
                                    <div class="col-md-3 col-xl-3">
                                        <label>Name</label>
                                    </div>
                                    <div class="col-md-4 col-xl-4">
                                        <label>Surname</label>
                                    </div>
                                    <div class="col-md-2 col-xl-2">
                                        <label>Email</label>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-1 col-xl-1">
                                        <input type="id" class="form-control" id="id"
                                               placeholder="Id"/>
                                    </div>
                                    <div class="col-md-2 col-xl-3">
                                        <input type="name" class="form-control" id="name"
                                               placeholder="Name"/>
                                    </div>
                                    <div class="col-md-4 col-xl-4">
                                        <input type="surname" class="form-control" id="surname"
                                               placeholder="Surname"/>
                                    </div>
                                    <div class="col-md-2 col-xl-2">
                                        <input type="email" class="form-control" id="email"
                                               placeholder="Email"/>
                                    </div>
                                    <div class="col-md-1 col-xl-1">
                                        <button type="submit" class="btn btn-primary">Add</button>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <table class="table">
                            <thead>
                                <tr class="table-red d-flex">
                                    <th class="col-sm-3">№</th>
                                    <th class="col-sm-3">Name</th>
                                    <th class="col-sm-2">Surname</th>
                                    <th class="col-sm-2">Email</th>
                                    <th class="col-sm-2">Options</th>
                                </tr>
                            </thead>
                            <tbody class="table-dark">
                                <tr class="d-flex">
                                    <th class="col-sm-3">1</th>
                                    <td class="col-sm-3">Natalia</td>
                                    <td class="col-sm-2">Kovalenko</td>
                                    <td class="col-sm-2">natalia@gmail.com</td>
                                    <td class="col-sm-2">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <button type="submit" class="btn btn-primary ">Delete</button>
                                            </div>
                                            <div class="col-md-6">
                                                <p>
                                                    <a href="#edit" class="btn btn-primary" data-toggle="modal">Edit</a>
                                                </p>

                                                <div id="edit" class="modal fade">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h4 class="modal-title">Edit content</h4>
                                                                <button type="button" class="close" data-dismiss="modal"
                                                                        aria-hidden="true"><i class="ti-close"></i>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <div class="container">
                                                                    <div class="row">
                                                                        <div class="col-md-12 col-xl-12 form">
                                                                            <input type="id" class="form-control" id="id1"
                                                                                   placeholder="Id"/>
                                                                        </div>
                                                                        <div class="col-md-12 col-xl-12 form">
                                                                            <input type="name" class="form-control" id="name1"
                                                                                   placeholder="Name"/>
                                                                        </div>
                                                                        <div class="col-md-12 col-xl-12 form">
                                                                            <input type="surname" class="form-control" id="surname1"
                                                                                   placeholder="Surname"/>
                                                                        </div>
                                                                        <div class="col-md-12 col-xl-12 form">
                                                                            <input type="phone_number" class="form-control"
                                                                                   id="email1"
                                                                                   placeholder="Email"/>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-default"
                                                                        data-dismiss="modal">
                                                                    Close
                                                                </button>
                                                                <button type="button" class="btn btn-primary">Save changes
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </section>
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