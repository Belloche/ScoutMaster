<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 4/15/21
  Time: 2:45 PM
  JSP with inputs for logging in as admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Scout Master - Login</title>
    <link rel="stylesheet" href="master.css" />
    <c:import url="bootstrap.jsp" />
</head>
<a href="#mainContent" class="skipLink">Skip</a>
<body>
<c:import url="nav.jsp" />
<main id="mainContent">
    <div class="container bg-white">
        <h1>Login</h1>
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
    <c:import url="footer.jsp" />
    </body>
</main>
</html>
