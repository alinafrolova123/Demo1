<%@include file="/views/components/header3.jsp" %>


<body>
<section class="section-margin">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <h1 class="hero-title">About us</h1>
                <h5>In our menu you will find the most delicious <br> dishes of Italian cuisine,
                    which you will definitely like.<br> Choose and order directly on our site!
                </h5>
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

            <div class="col-lg-6">
                <img class="img-fluid" src="${pageContext.request.contextPath}/static/img/banner/1.jpg" alt=""/>
            </div>
        </div>
    </div>
</section>
</body>

<%@include file="/views/components/footer.jsp" %>
</html>