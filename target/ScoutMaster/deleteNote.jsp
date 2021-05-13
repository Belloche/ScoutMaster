<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 5/6/21
  Time: 12:18 PM
  JSP for confirming delete of the specified note
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
        <h1 tabindex="0">Confirm Deletion</h1>
        <div class="row text-center">
            <div class="col-12">
                <h2 class="text-center" tabindex="0">${note.getProspect()}</h2>
            </div>
        </div>
        <div class="row text-center">
            <div class="col">
                <p tabindex="0">Position - ${note.getPosition()}</p>
            </div>
            <div class="col">
                <p tabindex="0">College - ${note.getCollege()}</p>
            </div>
        </div>
        <div class="row text-center">
            <div class="col">
                <p tabindex="0">Height - ${note.getHeightFeet()}'${note.getHeightInches()}"</p>
            </div>
            <div class="col">
                <p tabindex="0">Weight - ${note.getWeight()} lbs</p>
            </div>
        </div>
        <div class="row text-center">
            <div class="col">
                <p tabindex="0">Rating - ${note.getRating()}</p>
            </div>
            <div class="col">
                <p tabindex="0">Age - ${note.getAge()}</p>
            </div>
        </div>
        <br />
        <a href="deleteNote?id=${note.getId()}" tabindex="0"><button class="btn btn-danger mt-2">Delete Note</button></a>
    </div>
    <c:import url="footer.jsp" />
    </body>
</main>
</html>
