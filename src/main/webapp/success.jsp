<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 5/5/21
  Time: 11:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>ScoutMaster - Note Added</title>
    <link rel="stylesheet" href="master.css">
    <c:import url="bootstrap.jsp" />
</head>
<main>
    <body>
    <c:import url="nav.jsp" />
    <div class="container bg-white">
        <h1>Success!</h1>
        <p>The report was created!</p>
        <p>If you would like to view the note click <a href="fullNote?id=${id}" class="blueLink" role="view note">Here</a></p>
        <p>To go back to the homepage click <a href="/ScoutMaster_war/home" class="blueLink" role="home">Here</a></p>
    </div>
    <c:import url="footer.jsp" />
    </body>
</main>
</html>
