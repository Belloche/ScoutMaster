<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 5/5/21
  Time: 10:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DraftShare - Logged Out</title>
    <link rel="stylesheet" href="master.css" />
    <c:import url="bootstrap.jsp" />
</head>
<body>
    <c:import url="nav.jsp" />

    <div class="container bg-white">
        <% session.invalidate(); %>
        <h1>You are logged out</h1>
        <p>Click <a href="/ScoutMaster_war/home">here</a> to go back to the homepage</p>
    </div>

    <c:import url="footer.jsp" />
</body>
</html>
