<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Info</title>
</head>
<body>
<div itemid="user"></div>
<h1>First Name: ${user.get().firstName}</h1>
<h1>Last Name: ${user.get().lastName}</h1>
<h1>Date: ${user.get().BDate}</h1>
<h1>Login: ${user.get().login}</h1>
<h1>About Me: ${user.get().about}</h1>
<h1>Address: ${user.get().address}</h1>

<br><br>

<a href="${pageContext.request.contextPath}/updateUser/${user.get().id}">Update</a>

<br><br>

<a href="${pageContext.request.contextPath}/users">Show All Users</a>
</body>
</html>
