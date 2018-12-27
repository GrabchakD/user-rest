<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Users</title>
</head>
<body>

<h1>Users List</h1>

<br/><br/>
<div>
    <table border="1">
        <tr>
            <th>First Name</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${userList}" var ="user">
            <tr>
                <td>${user.firstName}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/users/${user.id}" data-method="delete" onclick="return confirm('Are you sure?')">Delete</a>
                    <a href="${pageContext.request.contextPath}/user/${user.id}">Info</a>
                </td>
            </tr>
        </c:forEach>
    </table>

    <br/><br/>
    <a href="${pageContext.request.contextPath}/addUser">Add User</a>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
        src="https://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
        crossorigin="anonymous">
</script>
</body>
</html>
