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
    <title>Scout Master - Search Prospects</title>
    <link rel="stylesheet" href="master.css">
    <c:import url="bootstrap.jsp" />
</head>
<body>
    <c:import url="nav.jsp" />

    <div class="container bg-white">
        <h1>Prospect Search</h1>
        <form action="/ScoutMaster_war/search" class="m-2">
            <div class="form-group row">
                <label for="searchTerm">Search</label>
                <input type="text" name="searchTerm" id="searchTerm" class="form-control" value="${term}" required />
            </div>
            <fieldset class="form-group">
                <div class="row">
                    <legend class="col-form-label">Search Types</legend>
                    <div class="col-sm-10">
                        <div class="form-check">
                            <input type="radio" name="typeRadios" id="typeRadioName" class="form-check-input" value="prospect" required />
                            <label for="typeRadioName" class="form-check-label" ${prospectSelected}>Name</label>
                        </div>
                        <div class="form-check">
                            <input type="radio" name="typeRadios" id="typeRadioCollege" class="form-check-input" value="college" />
                            <label for="typeRadioCollege" class="form-check-label" ${collegeSelected}>College</label>
                        </div>
                        <div class="form-check">
                            <input type="radio" name="typeRadios" id="typeRadioPosition" class="form-check-input" value="position" />
                            <label for="typeRadioPosition" class="form-check-label" ${positionSelected}>Position</label>
                        </div>
                    </div>
                </div>
            </fieldset>
            <div class="form-group row">
                <div class="col-sm-10">
                    <button type="submit" class="btn btn-primary">Search</button>
                </div>
            </div>
        </form>
    </div>
    <div class="container bg-white">
        <h2>Search Results</h2>
        <c:choose>
            <c:when test="${not empty emptySearch}">
                <p>This is where your search results will display</p>
            </c:when>
            <c:when test="${!not empty emptySearch}">
                <c:forEach var="note" items="results">
                    <div class="container bg-white">
                        Working!
                    </div>
                </c:forEach>
            </c:when>
        </c:choose>
    </div>
</body>
</html>
