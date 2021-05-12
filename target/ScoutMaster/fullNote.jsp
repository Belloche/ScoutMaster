<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 4/15/21
  Time: 2:46 PM
  JSP for viewing all details of the specified note by id parameter
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Scout Master - Full Note</title>
    <link rel="stylesheet" href="master.css" />
    <c:import url="bootstrap.jsp" />
</head>
<main>
    <body>
    <c:import url="nav.jsp" />

    <div class="container bg-white">
        <div class="row text-center">
            <div class="col-12">
                <h1 class="text-center">${note.getProspect()}</h1>
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
        <h2 class="text-center">Report</h2>
        <p class="text-center">${note.getReport()}</p>
        <br />
        <a href="/ScoutMaster_war/home"><button class="btn btn-primary">Back to Home</button></a>
    </div>
    <c:import url="footer.jsp" />
    </body>
</main>
</html>
