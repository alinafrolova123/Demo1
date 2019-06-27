<%@ page import="com.softserve.entities.Dish" %>
<%@include file="/views/components/header3.jsp" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Alina
  Date: 6/26/2019
  Time: 5:55 PM
  To change this template use File | Settings | File Templates.
--%>

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
                            <button class="btn click-btn button round-button" href="/user/basket?id=${dish.id_dish}"><i class="ti-plus"></i>
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
                            <button class="btn click-btn button round-button" href="/user/basket?id=${drink.id_dish}"><i class="ti-plus"></i>
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
</html>
