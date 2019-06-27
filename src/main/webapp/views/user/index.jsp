
  <%@include file="/views/components/header.jsp"%>

  <!--================Hero Banner Section start =================-->
  <body>
  <section class="hero-banner">
    <div class="hero-wrapper">
      <div class="hero-left">
        <h1 class="hero-title">Restaurant</h1>
		<h5>Here you will find the most delicious <br>dishes with good prices!<br>Make an order directly from the site.</h5>
		<br>
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

  <%@include file="/views/components/footer.jsp"%>

</html>