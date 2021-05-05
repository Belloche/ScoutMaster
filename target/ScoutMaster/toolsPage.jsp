<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 4/29/21
  Time: 4:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ScoutMaster - Tools Page</title>
    <link rel="stylesheet" href="master.css" />
    <c:import url="bootstrap.jsp" />
</head>
<body>
    <c:import url="nav.jsp" />
    <div class="container bg-white" align="center">
        <h1>Scout Master Tools</h1>
        <div class="row">
            <div class="col-sm">
                <h3>Note Tools</h3>
            </div>
        </div>
        <div class="row">
            <div class="col-sm">
                <p>Use New Prospect to insert a new note on an NFL prospect, or use Delete a Note to remove a note from the database.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-sm">
                <a href="/ScoutMaster_war/noteCreator"><button class="btn btn-primary mb-2">New Prospect</button></a>
            </div>
            <div class="col-sm">
                <a href="/ScoutMaster_war/deleteNote"><button class="btn btn-success mb-2">Delete a Note</button></a>
            </div>
        </div>

        <br /><br />

        <div class="row">
            <div class="col-sm">
                <h3>Credential Tools</h3>
            </div>
        </div>
        <div class="row">
            <div class="col-sm">
                <p>To view your username and password click View/Change Credentials, or click Log Out to log out of ScoutMaster.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-sm">
                <a href="/ScoutMaster_war/viewCredentials"><button class="btn btn-danger mb-2">View/Change Credentials</button></a>
            </div>
            <div class="col-sm">
                <a href="/ScoutMaster_war/logOut.jsp"><button class="btn btn-danger mb-2">Log Out</button></a>
            </div>
        </div>
    </div>
</body>
</html>
