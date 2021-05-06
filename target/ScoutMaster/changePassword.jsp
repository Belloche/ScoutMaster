<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 5/6/21
  Time: 10:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ScoutMaster - Change Password</title>
    <link rel="stylesheet" href="master.css" />
    <c:import url="bootstrap.jsp" />
</head>
<body>
    <c:import url="nav.jsp" />
    <div class="container bg-white">
        <c:if test="${incorrect.equals('true')}">
            <div class="alert alert-danger">
                <h4 class="alert-heading">Incorrect Password</h4>
                <p>Make sure your old password is correct</p>
            </div>
        </c:if>
        <form action="changePassword">
            <div class="form-group justify-content-center">
                <label for="oldPassword">Old Password</label>
                <input type="password" class="form-control" id="oldPassword" name="oldPassword" required />

                <label for="newPassword">New Password</label>
                <input type="password" pattern=".{8-32}" class="form-control" id="newPassword" name="newPassword" required />

                <button class="btn btn-success mb-2 mt-2" type="submit" id="submitChange">Change Password</button>
            </div>
        </form>
    </div>
    <c:import url="footer.jsp" />
</body>
</html>
