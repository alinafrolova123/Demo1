<%@include file="/views/components/header3.jsp" %>


<body>
<section class="section-margin">
    <section class="container">
        <div class="row">
            <div class="col-12">
                <div class="panel body-default">
                    <div class="border-red">
                        <div class="row">
                            <div class="col-md-1 col-xl-1">
                                <label>№</label>
                            </div>
                            <div class="col-md-3 col-xl-3">
                                <label>Name</label>
                            </div>
                            <div class="col-md-4 col-xl-4">
                                <label>Surname</label>
                            </div>
                            <div class="col-md-2 col-xl-2">
                                <label>Email</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-1 col-xl-1">
                                <input type="id_user" class="form-control" id_user="id_user"
                                       placeholder="Id"/>
                            </div>
                            <div class="col-md-2 col-xl-3">
                                <input type="name" class="form-control" id_user="name"
                                       placeholder="Name"/>
                            </div>
                            <div class="col-md-4 col-xl-4">
                                <input type="surname" class="form-control" id_user="surname"
                                       placeholder="Surname"/>
                            </div>
                            <div class="col-md-2 col-xl-2">
                                <input type="email" class="form-control" id_user="email"
                                       placeholder="Email"/>
                            </div>
                            <div class="col-md-1 col-xl-1">
                                <button type="submit" class="btn btn-primary">Add</button>
                            </div>
                        </div>
                    </div>
                </div>


                <table class="table">
                    <thead>
                    <tr class="table-red d-flex">
                        <th class="col-sm-3">№</th>
                        <th class="col-sm-3">Name</th>
                        <th class="col-sm-2">Surname</th>
                        <th class="col-sm-2">Email</th>
                        <th class="col-sm-2">Options</th>
                    </tr>
                    </thead>
                    <tbody class="table-dark">
                    <tr class="d-flex">
                        <th class="col-sm-3">1</th>
                        <td class="col-sm-3">Natalia</td>
                        <td class="col-sm-2">Kovalenko</td>
                        <td class="col-sm-2">natalia@gmail.com</td>
                        <td class="col-sm-2">
                            <div class="row">
                                <div class="col-md-6">
                                    <button type="submit" class="btn btn-primary ">Delete</button>
                                </div>
                                <div class="col-md-6">
                                    <p>
                                        <a href="#edit" class="btn btn-primary" data-toggle="modal">Edit</a>
                                    </p>

                                    <div id_user="edit" class="modal fade">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h4 class="modal-title">Edit content</h4>
                                                    <button type="button" class="close" data-dismiss="modal"
                                                            aria-hidden="true"><i class="ti-close"></i>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="container">
                                                        <div class="row">
                                                            <div class="col-md-12 col-xl-12 form">
                                                                <input type="id_user" class="form-control" id_user="id1"
                                                                       placeholder="Id"/>
                                                            </div>
                                                            <div class="col-md-12 col-xl-12 form">
                                                                <input type="name" class="form-control" id_user="name1"
                                                                       placeholder="Name"/>
                                                            </div>
                                                            <div class="col-md-12 col-xl-12 form">
                                                                <input type="surname" class="form-control"
                                                                       id_user="surname1"
                                                                       placeholder="Surname"/>
                                                            </div>
                                                            <div class="col-md-12 col-xl-12 form">
                                                                <input type="phone_number" class="form-control"
                                                                       id_user="email1"
                                                                       placeholder="Email"/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default"
                                                            data-dismiss="modal">
                                                        Close
                                                    </button>
                                                    <button type="button" class="btn btn-primary">Save changes
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </section>
</section>
</body>

<%@include file="/views/components/footer.jsp" %>
</html>