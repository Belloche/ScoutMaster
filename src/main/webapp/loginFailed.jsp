<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 4/29/21
  Time: 4:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ScoutMaster - Login Failed</title>
    <link rel="stylesheet" href="master.css" />
    <c:import url="bootstrap.jsp" />
</head>
<body>
    <c:import url="nav.jsp" />
    <div class="container bg-white">
        <h1>Access Denied</h1>
        <h3>Looks like your login was wrong, or you don't have access to that page</h3>
    </div>
    <c:import url="footer.jsp" />
</body>
</html>
