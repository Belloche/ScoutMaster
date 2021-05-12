<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 4/29/21
  Time: 4:48 PM
  JSP with login fail message
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>ScoutMaster - Login Failed</title>
    <link rel="stylesheet" href="master.css" />
    <c:import url="bootstrap.jsp" />
</head>
<main>
    <body>
    <c:import url="nav.jsp" />
    <div class="container bg-white">
        <h1>Access Denied</h1>
        <h3>Looks like your login was wrong, please try again</h3>
    </div>
    <c:import url="footer.jsp" />
    </body>
</main>
</html>
