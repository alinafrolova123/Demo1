<%@ page import="com.softserve.entities.Dish" %>
<%@ page import="java.util.List" %>
<%@include file="/views/components/header3.jsp" %>
<% List<Dish> dishes = (List<Dish>) request.getAttribute("dishes");%>

<!--<section class="about section-margin pb-xl-70">-->
<body>

<section class="section-margin">
    <div class="container">
        <form class="panel body-default" action="/admin/dishes" method="post">
            <div class="border-red">
                <div class="row">
                    <div class="col-md-3 col-xl-3">
                        <label>Name</label>
                    </div>
                    <div class="col-md-3 col-xl-3">
                        <label>Description</label>
                    </div>
                    <div class="col-md-2 col-xl-2">
                        <label>Price</label>
                    </div>
                    <div class="col-md-2 col-xl-2">
                        <label>Type</label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3 col-xl-3">
                        <input type="name" class="form-control" name="name"
                               placeholder="Name"/>
                    </div>
                    <div class="col-md-3 col-xl-3">
                        <input type="description" class="form-control" name="description"
                               placeholder="Description"/>
                    </div>
                    <div class="col-md-2 col-xl-2">
                        <input type="price" class="form-control" name="price"
                               placeholder="Price"/>
                    </div>
                    <div class="col-md-2 col-xl-2">
                        <input type="type" class="form-control" name="type"
                               placeholder="Type"/>
                    </div>
                    <div class="col-md-2 col-xl-2">
                        <button type="submit" class="btn btn-primary">Add</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</section>


<section class="section-margin">
    <section class="container">
        <div class="row">
            <div class="col-12">
                <table class="table">
                    <thead>
                    <tr class="table-red d-flex">
                        <th class="col-sm-2">ID</th>
                        <th class="col-sm-3">Name</th>
                        <th class="col-sm-3">Description</th>
                        <th class="col-sm-2">Price</th>
                        <th class="col-sm-2">Options</th>
                    </tr>
                    </thead>
                    <tbody class="table-dark">

                    <c:forEach var="dish" items="${dishes}">
                        <tr class="d-flex" id="item_${dish.idDish}">
                            <td class="col-sm-2">${dish.idDish}</td>
                            <td class="col-sm-3">${dish.name}</td>
                            <td class="col-sm-3">${dish.description}</td>
                            <td class="col-sm-2">${dish.price}</td>
                            <td class="col-sm-1">
                                <button class="btn btn-primary" type="submit" onclick="deleteFromMenu(${dish.idDish})">
                                    Delete
                                </button>
                            </td>
                            <td class="col-sm-1">
                                <button class="btn btn-primary" data-toggle="modal" data-target="#myModal_${dish.idDish}" type="submit">Edit
                                </button>
                            </td>
                        </tr>

                        <!-- Modal -->
                        <div class="modal fade" id="myModal_${dish.idDish}" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLongTitle">Edit dish</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <form role="form" method="post" action="/admin/edit/dish">
                                            <input type="hidden" value="${dish.idDish}" name="idDish" />
                                            <div class="form-group">
                                                <label>Name:</label>
                                                <input name="dishName" class="form-control rounded" value="${dish.name}"/>
                                            </div>
                                            <div class="form-group">
                                                <label>Description:</label>
                                                <input name="dishDescription" class="form-control rounded"
                                                       value="${dish.description}"/>
                                            </div>
                                            <div class="form-group">
                                                <label>Price:</label>
                                                <input name="dishPrice" class="form-control rounded" value="${dish.price}"/>
                                            </div>
                                            <div class="form-group">
                                                <button type="submit" class="btn btn-success">Update</button>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button"  class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
</section>





</body>
<script src="${pageContext.request.contextPath}/static/js/deleteFromMenu.js"></script>
<%@include file="/views/components/footer.jsp" %>

</html>