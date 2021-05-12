<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 5/6/21
  Time: 11:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>ScoutMaster - View Credentials</title>
    <link rel="stylesheet" href="master.css" />
    <c:import url="bootstrap.jsp" />
</head>
<main>
    <body>
    <c:import url="nav.jsp" />
    <div class="container bg-white" align="center">
        <c:if test="${passwordChanged.equals('true')}">
            <div class="alert alert-success">
                <h3 class="alert-heading">Password Changed Successfully</h3>
                <p>View the changed password below</p>
            </div>
        </c:if>
        <h1>Your Credentials</h1>
        <h2>Don't Share These With Anyone</h2>
        <p>Username: <b>${credentials.getUsername()}</b></p>
        <p>Password: <b>${credentials.getPassword()}</b></p>
        <a href="/ScoutMaster_war/changePassword.jsp"><button class="btn btn-danger">Change Password</button></a>
    </div>
    <c:import url="footer.jsp" />
    </body>
</main>
</html>
