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
                        <tr class="d-flex">
                            <td class="col-sm-2">${dish.id_dish}</td>
                            <td class="col-sm-3">${dish.name}</td>
                            <td class="col-sm-3">${dish.description}</td>
                            <td class="col-sm-2">${dish.price}</td>
                                <%--<button type="submit" class="btn btn-primary">Add</button>--%>
                            <td class="col-sm-2"><a class="btn btn-primary" href="/delete?id=${dish.id_dish}">Delete</a>
                                <a class="btn btn-primary" href="/update?id=${dish.id_dish}">Update</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
</section>


</body>

<%@include file="/views/components/footer.jsp" %>

</html>