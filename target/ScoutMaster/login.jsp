<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 4/15/21
  Time: 2:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Scout Master - Login</title>
    <link rel="stylesheet" href="master.css" />
    <c:import url="bootstrap.jsp" />
</head>
<body>
    <c:import url="nav.jsp" />
    <div class="container bg-white">
        <h2>Login</h2>
        <form action="j_security_check">
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" class="form-control" id="username" name="j_username" required />
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" name="j_password" required />
            </div>
            <button type="submit" class="btn btn-primary mb-2">Log In</button>
        </form>
    </div>
</body>
</html>
