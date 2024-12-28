<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Document</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
            <!-- Latest compiled JavaScript -->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        </head>

        <body>
            <div class="container mt-5">
                <div class="row">
                    <div class="col-12 mx-auto">
                        <div class="d-flex justify-content-between">
                            <h1>TABLE USERS</h1>
                            <a href="/admin/user/create" class="btn btn-primary">Create a User</a>
                        </div>

                        <table class="table table-bordered table-hover">
                            <tr>
                                <th>ID</th>
                                <th>Email</th>
                                <th>Full Name</th>
                                <th>Action</th>
                            </tr>
                            <c:forEach var="user" items="${listUser}">
                                <tr>
                                    <th>${user.id}</th>
                                    <td>${user.email}</td>
                                    <td>${user.fullName}</td>
                                    <td>
                                        <a class="btn btn-success"
                                            href="/admin/user/${user.id}">View</a>&nbsp;&nbsp;&nbsp;
                                        <a class="btn btn-warning"
                                            href="/admin/user/update/${user.id}">Fix</a>&nbsp;&nbsp;&nbsp;
                                        <a class="btn btn-danger" href="/admin/user/deleteuser/${user.id}">Delete</a>
                                    </td>
                                </tr>
                            </c:forEach>

                        </table>
                    </div>
                </div>
            </div>
        </body>

        </html>