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
            <table id="table" class="table table-hover">
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
                    <tr id="item_${bin_dish.idDish}" class="d-flex">
                        <td class="col-sm-3 ">${bin_dish.name}</td>
                        <td class="col-sm-5">${bin_dish.description}</td>
                        <td class="col-sm-2">${bin_dish.price}</td>
                        <td class="col-sm-2">
                            <button class="btn click-btn button round-button"
                                    onclick="deleteFromBasket(${bin_dish.idDish})"><i class="ti-minus"></i>
                            </button>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <button class="btn button-shadow mt-2 mt-lg-4" data-toggle="modal"
                    data-target="#modal" type="submit" style="margin-left: 90%; margin-bottom: 10px;">Count
            </button>
        </div>
    </div>
</section>
</body>


<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Confirmation of your purchase</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true"><i class="ti-close"></i></span>
                </button>
            </div>
            <div class="modal-body">
                <form role="form" method="post" action="/user/bill">
                    Your bill is: $${bill}
                    Would you like to make a payment?
                    <div class="form-group modal-footer">
                        <button type="submit" class="btn btn-success">Yes</button>
                        <button type="button"  class="btn btn-secondary" data-dismiss="modal">No</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/static/js/makePayment.js"></script>
<script src="${pageContext.request.contextPath}/static/js/deleteFromBasket.js"></script>
<%@include file="/views/components/footer.jsp" %>
</html>

