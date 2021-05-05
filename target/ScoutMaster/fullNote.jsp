<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 4/15/21
  Time: 2:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Scout Master - Full Note</title>
    <link rel="stylesheet" href="master.css" />
    <c:import url="bootstrap.jsp" />
</head>
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
                <h4>Position - ${note.getPosition()}</h4>
            </div>
            <div class="col">
                <h4>College - ${note.getCollege()}</h4>
            </div>
        </div>
        <div class="row text-center">
            <div class="col">
                <h4>Height - ${note.getHeightFeet()}'${note.getHeightInches()}"</h4>
            </div>
            <div class="col">
                <h4>Weight - ${note.getWeight()} lbs</h4>
            </div>
        </div>
        <div class="row text-center">
            <div class="col">
                <h4>Rating - ${note.getRating()}</h4>
            </div>
            <div class="col">
                <h4>Age - ${note.getAge()}</h4>
            </div>
        </div>
        <h3 class="text-center">Report</h3>
        <p class="text-center">${note.getReport()}</p>
        <br />
        <a href="/ScoutMaster_war/home"><button class="btn btn-primary">Go Back</button></a>
    </div>
</body>
</html>
