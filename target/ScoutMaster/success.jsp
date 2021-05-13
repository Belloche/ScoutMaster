<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 5/5/21
  Time: 11:30 AM
  JSP with note creation confirmation
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>ScoutMaster - Note Added</title>
    <link rel="stylesheet" href="master.css">
    <c:import url="bootstrap.jsp" />
</head>
<a href="#mainContent" class="skipLink">Skip</a>
<body>
<c:import url="nav.jsp" />
<main id="mainContent">
    <div class="container bg-white">
        <h1 tabindex="0">Success!</h1>
        <p tabindex="0">The report was created!</p>
        <p tabindex="0">If you would like to view the note click <a href="fullNote?id=${id}" class="blueLink" role="view note">Here</a></p>
        <p tabindex="0">To go back to the homepage click <a href="/ScoutMaster_war/home" class="blueLink" role="home">Here</a></p>
    </div>
    <c:import url="footer.jsp" />
    </body>
</main>
</html>
