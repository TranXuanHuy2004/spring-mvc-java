<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
                <div class="col-md-6 col-12 mx-auto">
                    <h3>Create a user</h3>
                    <hr />
                    <form:form action="/admin/user/create" method="post" modelAttribute="newUser">
                        <div class="mb-3">
                            <label class="form-lable">Email:</label>
                            <form:input type="text" class="form-control" name="email" path="email" />
                        </div>
                        <div class="mb-3">
                            <label class="form-lable">password:</label>
                            <form:input type="text" class="form-control" name="password" path="password" />
                        </div>
                        <div class="mb-3">
                            <label class="form-lable">Full Name:</label>
                            <form:input type="text" class="form-control" name="fullName" path="fullName" />
                        </div>
                        <div class="mb-3">
                            <label class="form-lable">Address:</label>
                            <form:input type="text" class="form-control" name="address" path="address" />
                        </div>
                        <div class="mb-3">
                            <label class="form-lable">Phone:</label>
                            <form:input type="text" class="form-control" name="phone" path="phone" />
                        </div>
                        <button class="btn btn-success">Submit</button>
                    </form:form>
                </div>
            </div>
        </div>
    </body>

    </html>