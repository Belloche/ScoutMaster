<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 4/29/21
  Time: 4:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ScoutMaster - Tools Page</title>
    <link rel="stylesheet" href="master.css" />
    <c:import url="bootstrap.jsp" />
</head>
<body>
    <nav class="navBar">
        <b><a href="/ScoutMaster_war/home" class="navTransition">Scout Master</a></b>
        <a href="/ScoutMaster_war/newNote" class="navTransition">New Note</a>
        <button href="/ScoutMaster_war/logout" class="btn btn-danger">Logout</button>
    </nav>
</body>
</html>
