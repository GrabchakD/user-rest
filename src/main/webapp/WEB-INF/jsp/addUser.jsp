<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add</title>
</head>
<body>

<h1>Input User info</h1>

<form:form commandName="user" action="/add" method="post">
    <form:input path="firstName" type="text" name="firstName" id="firstName" placeholder="First Name"/>
    <br>
    <br>
    <form:input path="lastName" type="text" name="lastName" id="lastName" placeholder="Last Name"/>
    <br>
    <br>
    <form:input path="BDate" type="text" name="date" id="date" placeholder="01/01/2000"/>
    <br>
    <br>
    <form:input path="login" type="text" name="login" id="login" placeholder="Login"/>
    <br>
    <br>
    <form:input path="password" type="password" name="pswd" id="pswd" placeholder="Password"/>
    <br>
    <br>
    <form:input path="about" type="text" name="info" id="info" placeholder="Your Info"/>
    <br>
    <br>
    <form:input path="address" type="text" name="address" id="address" placeholder="Address"/>
    <br>
    <br>
    <input type="submit" name="submit" id="submit" value="Add User">
    <br>
    <br>
    <input type="reset">
</form:form>
</body>
</html>
