<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 5/6/21
  Time: 12:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>ScoutMaster - Delete Note</title>
    <link rel="stylesheet" href="master.css">
    <c:import url="bootstrap.jsp" />
</head>
<main>
    <body>
    <c:import url="nav.jsp" />
    <div class="container bg-white">
        <h1>Confirm Deletion</h1>
        <div class="row text-center">
            <div class="col-12">
                <h2 class="text-center">${note.getProspect()}</h2>
            </div>
        </div>
        <div class="row text-center">
            <div class="col">
                <p>Position - ${note.getPosition()}</p>
            </div>
            <div class="col">
                <p>College - ${note.getCollege()}</p>
            </div>
        </div>
        <div class="row text-center">
            <div class="col">
                <p>Height - ${note.getHeightFeet()}'${note.getHeightInches()}"</p>
            </div>
            <div class="col">
                <p>Weight - ${note.getWeight()} lbs</p>
            </div>
        </div>
        <div class="row text-center">
            <div class="col">
                <p>Rating - ${note.getRating()}</p>
            </div>
            <div class="col">
                <p>Age - ${note.getAge()}</p>
            </div>
        </div>
        <br />
        <a href="deleteNote?id=${note.getId()}"><button class="btn btn-danger mt-2">Delete Note</button></a>
    </div>
    <c:import url="footer.jsp" />
    </body>
</main>
</html>
