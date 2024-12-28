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
            <h1>UPDATE USER</h1>
            <div class="container mx-auto mt-5">
                <form:form method="post" action="/admin/user/update" modelAttribute="newUser">
                    <table class="table table-bordered table-hover">
                        <tr style="display: none;">
                            <th>ID:</th>
                            <td>
                                <form:input type="text" class="form-control" name="id" path="id" value="${user.id}" />
                            </td>

                        </tr>
                        <tr>
                            <th>Email:</th>
                            <td>
                                <form:input type="text" class="form-control" name="email" path="email"
                                    value="${user.email}" />
                            </td>

                        </tr>
                        <tr>
                            <th>Full Name:</th>
                            <td>
                                <form:input type="text" class="form-control" name="fullName" path="fullName"
                                    value="${user.fullName}" />
                            </td>
                        </tr>
                        <tr>
                            <th>Password:</th>
                            <td>
                                <form:input type="text" class="form-control" name="password" path="password"
                                    value="${user.password}" />
                            </td>
                        </tr>
                        <tr>
                            <th>Phone:</th>
                            <td>
                                <form:input type="text" class="form-control" name="phone" path="phone"
                                    value="${user.phone}" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2"><button class="btn btn-success">UPDATE</button></td>
                        </tr>
                    </table>
                </form:form>
            </div>
        </body>

        </html>