<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 4/29/21
  Time: 4:35 PM
  JSP with admin tools for creating and deleting notes, viewing credentials and logging out
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>ScoutMaster - Tools Page</title>
    <link rel="stylesheet" href="master.css" />
    <c:import url="bootstrap.jsp" />
</head>
<main>
    <body>
    <c:import url="nav.jsp" />
    <div class="container bg-white" align="center">
        <h1>Scout Master Tools</h1>

        <c:if test="${not empty deleted}">
            <div class="alert alert-success">
                <h2 class="alert-heading">Success!</h2>
                <p>Your note was deleted successfully</p>
            </div>
        </c:if>

        <div class="row">
            <div class="col-sm">
                <h2>Note Tools</h2>
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
                <a href="/ScoutMaster_war/chooseNote"><button class="btn btn-danger mb-2">Delete a Note</button></a>
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
                <a href="/ScoutMaster_war/viewCredentials"><button class="btn btn-primary mb-2">View Credentials</button></a>
            </div>
            <div class="col-sm">
                <a href="/ScoutMaster_war/logOut"><button class="btn btn-danger mb-2">Log Out</button></a>
            </div>
        </div>
    </div>
    <c:import url="footer.jsp" />
    </body>
</main>
</html>
