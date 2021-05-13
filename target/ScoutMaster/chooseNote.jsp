<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 5/6/21
  Time: 12:02 PM
  JSP for choosing which note you are deleting
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>ScoutMaster - Choose a Note</title>
    <link rel="stylesheet" href="master.css">
    <c:import url="bootstrap.jsp" />
</head>
<main id="mainContent">
    <body>
    <c:import url="nav.jsp" />

    <div class="container bg-white">
        <h1>Choose a Note to Delete</h1>

        <c:forEach var="note" items="${notes}">
            <div class="container bg-white thumbnail col-md-4">
                <table>
                    <tr>
                        <td>Name</td>
                        <th>${note.getProspect()}</th>
                    </tr>
                    <tr>
                        <td>Position</td>
                        <td>${note.getPosition()}</td>
                    </tr>
                    <tr>
                        <td>College</td>
                        <td>${note.getCollege()}</td>
                    </tr>
                    <tr>
                        <td>Rating</td>
                        <td><b>${note.getRating()}</b></td>
                    </tr>
                </table>
                <a href="fullNote?id=${note.getId()}" class="blueLink">View Report</a>
                <br />
                <a href="confirm?id=${note.getId()}"><button class="btn btn-danger mt-2">Delete Note</button></a>
            </div>
        </c:forEach>
    </div>

    <c:import url="footer.jsp" />
    </body>
</main>
</html>
