<%@ page import="com.softserve.entities.Dish" %>
<%@ page import="java.util.List" %>
<%@include file="/views/components/header.jsp" %>
<% List<Dish> dishes = (List<Dish>) request.getAttribute("dishes");%>
<% List<Dish> drinks = (List<Dish>) request.getAttribute("drinks");%>

<body>
<section class="container">
    <div class="row">
        <div class="col-12">
            <div class="section-intro mb-75px" style="margin-top: 100px; margin-bottom: 30px">
                <h4 class="intro-title">Dishes</h4>
            </div>
            <table class="table table-hover">
                <thead>
                <tr class="d-flex">
                    <th class="col-sm-3">Name</th>
                    <th class="col-sm-5">Description</th>
                    <th class="col-sm-2">Price</th>
                    <th class="col-sm-2"></th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="dish" items="${dishes}">
                    <tr class="d-flex">
                        <td class="col-sm-3">${dish.name}</td>
                        <td class="col-sm-5">${dish.description}</td>
                        <td class="col-sm-2">${dish.price}</td>
                        <td class="col-sm-2">
                            <button class="btn click-btn button round-button" href="/user/basket?id=${dish.idDish}"><i
                                    class="ti-plus"></i>
                            </button>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

            <div class="section-intro mb-75px" style="margin-bottom: 30px;">
                <h4 class="intro-title">Drinks</h4>
            </div>
            <table class="table table-hover">
                <thead>
                <tr class="d-flex">
                    <th class="col-sm-3">Name</th>
                    <th class="col-sm-5">Description</th>
                    <th class="col-sm-2">Price</th>
                    <th class="col-sm-2"></th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="drink" items="${drinks}">
                    <tr class="d-flex">
                        <td class="col-sm-3">${drink.name}</td>
                        <td class="col-sm-5">${drink.description}</td>
                        <td class="col-sm-2">${drink.price}</td>
                        <td class="col-sm-2">
                            <button class="btn click-btn button round-button" href="/user/basket?id=${drink.idDish}"><i
                                    class="ti-plus"></i>
                            </button>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</section>
</body>

<%@include file="/views/components/footer.jsp" %>


<script src="${pageContext.request.contextPath}/static/vendors/jquery/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/static/vendors/owl-carousel/owl.carousel.min.js"></script>


<script src="${pageContext.request.contextPath}/static/vendors/bootstrap/bootstrap.bundle.min.js"></script>

<script src="${pageContext.request.contextPath}/static/vendors/nice-select/jquery.nice-select.min.js"></script>
<script src="${pageContext.request.contextPath}/static/vendors/Magnific-Popup/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/jquery.ajaxchimp.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/mail-script.js"></script>
<script src="${pageContext.request.contextPath}/static/js/main.js"></script>


</html>