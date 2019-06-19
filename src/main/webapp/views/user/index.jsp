<%@ page contentType =" text/html; charset=UTF-8" language="java" %>
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
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/vendors/owl-carousel/owl.theme.default.min.css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/vendors/owl-carousel/owl.carousel.min.css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/vendors/Magnific-Popup/magnific-popup.css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/style.css"/>
</head>
<body>

  <!--================ Header Menu Area start =================-->
  <header class="header_area">
    <div class="main_menu">
      <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container box_1620">
          <a class="navbar-brand logo" href="/views/user/index.jsp"><img src="/static/img/2Restoran1.png" alt=""/></a>

          <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
            <ul class="nav navbar-nav menu_nav justify-content-end">
              <li class="nav-item active"><a class="nav-link" href="/views/user/index.jsp">Home</a></li>
              <li class="nav-item"><a class="nav-link" href="/views/user/about.jsp">About</a></li>
              <li class="nav-item"><a class="nav-link" href="/views/user/menu.jsp">Menu</a></li>
              <li class="nav-item"><a class="nav-link" href="/views/user/contact.jsp">Contact</a></li>
			  <li class="nav-item"><a class=" button button-shadow mt-2 mt-lg-4" href="/views/user/login.jsp">Login</a></li>
			  <li class="nav-item"><a class=" button button-shadow mt-2 mt-lg-4" href="/views/user/register.jsp">Register</a></li>
            </ul>
          </div> 
        </div>
      </nav>
    </div>
  </header>
  <!--================Header Menu Area =================-->

  
  <!--================Hero Banner Section start =================-->
  <section class="hero-banner">
    <div class="hero-wrapper">
      <div class="hero-left">
        <h1 class="hero-title">Restaurant</h1>
		<h4>Here you will find the most delicious <br>dishes with good prices!</br>Make an order directly from the site.</h4>
		<br></br>
        <div class="d-sm-flex flex-wrap">
        <a class="nav-link button button-hero button-shadow" href="/views/user/menu.jsp">Our Menu</a>
        </div>
        <ul class="hero-info d-none d-lg-block">
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
	  
	  
      <div class="hero-right">
        <div class="owl-carousel owl-theme hero-carousel">
          <div class="hero-carousel-item">
            <img class="img-fluid" src="${pageContext.request.contextPath}/static/img/banner/hero-banner1.png" alt=""/>
          </div>
          <div class="hero-carousel-item">
            <img class="img-fluid" src="${pageContext.request.contextPath}/static/img/banner/hero-banner2.png" alt=""/>
          </div>
          <div class="hero-carousel-item">
            <img class="img-fluid" src="${pageContext.request.contextPath}/static/img/banner/hero-banner3.png" alt=""/>
          </div>
          <div class="hero-carousel-item">
            <img class="img-fluid" src="${pageContext.request.contextPath}/static/img/banner/hero-banner4.png" alt=""/>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--================Hero Banner Section end =================-->


  <!--================About Section start =================-->
  <section class="about section-margin pb-xl-70">
    <div class="container">
      <div class="row">
        <div class="col-md-6 col-xl-6 mb-5 mb-md-0 pb-5 pb-md-0">
          <div class="img-styleBox">
            <div class="styleBox-border">
              <img class="styleBox-img1 img-fluid" src="${pageContext.request.contextPath}/static/img/about-img1.png" alt=""/>
            </div>
            <img class="styleBox-img2 img-fluid" src="${pageContext.request.contextPath}/static/img/about-img2.png" alt=""/>
          </div>
        </div>
        <div class="col-md-6 pl-md-5 pl-xl-0 offset-xl-1 col-xl-5">
          <div class="section-intro mb-lg-4">
            <h4 class="intro-title">About Us</h4>
			<p>Our restaurant is focused on Italian cuisine.<br/>There is always a nice atmosphere and delicious food<br/></p>
          </div>
          <a class="button button-shadow mt-2 mt-lg-4" href="about.jsp">Learn More</a>
        </div>
      </div>
    </div>
  </section>
  <!--================About Section End =================-->
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