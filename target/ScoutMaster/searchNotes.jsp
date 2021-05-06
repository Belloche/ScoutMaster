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
                    <div class="col-sm-5">
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
                    <div class="col-sm-5">
                        <h3>For Accurate Results</h3>
                        <p>Make sure you enter the right name and <b>full name</b> of the university you are looking up (for example, the Crimson Tide play at University of Alabama at Tuscaloosa). Positions should be 2 letters</p>
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

        <c:choose>
            <c:when test="${not empty emptySearch}">
            <div class="container bg-white">
                <h2>Search Results</h2>
                <p>This is where your search results will display</p>
            </div>
            </c:when>
            <c:when test="${not empty emptyResults}">
            <div class="container bg-white">
                <h2>Search Results</h2>
                <div class="container">
                    <h3>No results found</h3>
                    <p>Looks like there weren't any notes that match your search</p>
                </div>
            </div>
            </c:when>
            <c:when test="${!not empty emptySearch}">
                <c:forEach var="note" items="${results}">
                    <div class="container bg-white">
                        <h2>Search Results</h2>
                        <div class="container bg-white thumbnail">
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
                            <a href="fullNote?id=${note.getId()}">View Report</a>
                        </div>
                    </div>
                </c:forEach>
            </c:when>
        </c:choose>
    <c:import url="footer.jsp" />
</body>
</html>
