<%@include file="/views/components/header2.jsp" %>

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
                    width="100%" height="400px" frameborder="0" style="border:0" allowfullscreen></iframe>
        </div>
    </div>
</section>
</body>

<%@include file="/views/components/footer.jsp" %>


</html>