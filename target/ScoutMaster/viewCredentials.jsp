<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 5/6/21
  Time: 11:03 AM
  JSP with credentials and the option of changing the password
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>ScoutMaster - View Credentials</title>
    <link rel="stylesheet" href="master.css" />
    <c:import url="bootstrap.jsp" />
</head>
<a href="#mainContent" class="skipLink">Skip</a>
<body>
<c:import url="nav.jsp" />
<main id="mainContent">
    <div class="container bg-white" align="center">
        <c:if test="${passwordChanged.equals('true')}">
            <div class="alert alert-success">
                <h3 class="alert-heading" tabindex="0">Password Changed Successfully</h3>
                <p tabindex="0"View the changed password below</p>
            </div>
        </c:if>
        <h1 tabindex="0">Your Credentials</h1>
        <h2 tabindex="0">Don't Share These With Anyone</h2>
        <p tabindex="0">Username: <b>${credentials.getUsername()}</b></p>
        <p tabindex="0">Password: <b>${credentials.getPassword()}</b></p>
        <a href="/ScoutMaster_war/changePassword.jsp"><button class="btn btn-danger">Change Password</button></a>
    </div>
    <c:import url="footer.jsp" />
    </body>
</main>
</html>
