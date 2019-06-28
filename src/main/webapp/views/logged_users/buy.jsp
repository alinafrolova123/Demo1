<%@ page import="com.softserve.entities.Dish" %>
<%@include file="/views/components/header2.jsp" %>
<%@ page import="java.util.List" %>
<% List<Dish> items = (List<Dish>) session.getAttribute("bin_dishes");%>
<%--
  Created by IntelliJ IDEA.
  User: Alina
  Date: 6/26/2019
  Time: 5:55 PM
  To change this template use File | Settings | File Templates.
--%>

<body>

<section class="container">
    <div class="row">
        <div class="col-12">
            <div class="section-intro mb-75px" style="margin-top: 100px">
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
                <c:forEach var="bin_dish" items="${bin_dishes}">
                    <tr class="d-flex">
                        <td class="col-sm-3">${bin_dish.id_dish}</td>
                        <td class="col-sm-3">${bin_dish.name}</td>
                        <td class="col-sm-5">${bin_dish.description}</td>
                        <td class="col-sm-2">${bin_dish.price}</td>
                        <td class="col-sm-2">
                            <button class="btn click-btn button round-button" onclick="deleteFromBasket(${bin_dish.id_dish})"><i class="ti-minus"></i>
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
<script src="${pageContext.request.contextPath}/static/js/deleteFromBasket.js"></script>
<%@include file="/views/components/footer.jsp" %>
</html>

