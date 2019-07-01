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
                        <tr class="d-flex" id="us_${user.idUser}">
                            <td class="col-sm-3">${user.idUser}</td>
                            <td class="col-sm-3">${user.name}</td>
                            <td class="col-sm-2">${user.surname}</td>
                            <td class="col-sm-2">${user.phone_number}</td>
                            <td class="col-sm-1">
                                <button class="btn btn-primary" type="submit" onclick="deleteFromMenu(${user.idUser})">Delete
                                </button>
                            </td>
                            <td class="col-sm-1">
                                <button class="btn btn-primary" type="submit" onclick="">Edit</button>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
</section>

</body>

<script src="${pageContext.request.contextPath}/static/js/deleteFromUsers.js"></script>
<%@include file="/views/components/footer.jsp" %>
</html>