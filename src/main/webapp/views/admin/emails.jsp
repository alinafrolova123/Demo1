<%@include file="/views/components/header3.jsp" %>
<body>
<section class="section-margin">
    <section class="container">
        <div class="row">
            <div class="col-12">

                <table class="table">
                    <thead>
                    <tr class="table-red d-flex">
                        <th class="col-sm-2">ID</th>
                        <th class="col-sm-5">Email</th>
                    </tr>
                    </thead>

                    <tbody class="table-dark">
                    <c:forEach var="email" items="${emails}">
                        <tr class="d-flex" id="item_${email.idEmail}">
                            <td class="col-sm-2">${email.idEmail}</td>
                            <td class="col-sm-5">${email.email}</td>
                            <td class="col-sm-1">
                                <button class="btn btn-primary" type="submit"
                                        onclick="deleteFromEmail(${email.idEmail})">
                                    Delete
                                </button>
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
<script src="${pageContext.request.contextPath}/static/js/deleteFromEmail.js"></script>
<%@include file="/views/components/footer.jsp" %>
</html>