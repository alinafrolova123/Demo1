<%@ page import="com.softserve.entities.User" %>
<%@ page import="java.util.List" %>
<%@include file="/views/components/header3.jsp" %>
<% List<User> users = (List<User>) request.getAttribute("users");%>
<body>

<section class="section-margin">
    <section class="container">
        <div class="row">
            <div class="col-12">
                <table class="table">
                    <thead>
                    <tr class="table-red d-flex">
                        <th class="col-sm-3">ID</th>
                        <th class="col-sm-3">Name</th>
                        <th class="col-sm-2">Surname</th>
                        <th class="col-sm-2">Phone number</th>
                        <th class="col-sm-2">Options</th>
                    </tr>
                    </thead>
                    <tbody class="table-dark">

                    <c:forEach var="user" items="${users}">
                        <tr class="d-flex">
                            <td class="col-sm-3">${user.id_user}</td>
                            <td class="col-sm-3">${user.name}</td>
                            <td class="col-sm-2">${user.surname}</td>
                            <td class="col-sm-2">${user.phone_number}</td>
                                <%--<button type="submit" class="btn btn-primary">Add</button>--%>
                            <td class="col-sm-2"><a class="btn btn-primary" href="/delete?id=${user.id_user}">Delete</a>
                                <a class="btn btn-primary" href="/update?id=${user.id_user}">Update</a></td>
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