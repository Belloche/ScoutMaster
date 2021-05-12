<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 4/15/21
  Time: 2:35 PM
  JSP with a note creation form
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Scout Master - New Note</title>
    <link rel="stylesheet" href="master.css">
    <c:import url="bootstrap.jsp" />
</head>
<main>
    <body>
    <c:import url="nav.jsp" />
    <div class="container bg-white">
        <h1>New Note</h1>
        <form action="newNote">
            <div class="form-group">
                <label for="prospect">Prospect Name</label>
                <input type="text" name="prospect" id="prospect" class="form-control" required />
            </div>
            <div class="form-group">
                <label for="position">Position</label>
                <select name="position" id="position" list="positions" class="form-control" required>
                    <c:import url="positions.jsp" />
                </select>
            </div>
            <div class="form-group">
                <label for="university">College</label>
                <select name="university" id="university" list="universities" class="form-control">
                    <option disabled selected value>Select a College</option>
                    <c:forEach var="name" items="${universities}">
                        <option value="${name}">${name}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="row">
                <div class="form-group col-sm-4">
                    <label for="age">Age</label>
                    <input type="number" name="age" id="age" class="form-control" />
                </div>
                <div class="form-group col-sm-4">
                    <label for="feet">Height - Feet</label>
                    <input type="number" name="feet" id="feet" class="form-control" />
                    <label for="inches">Inches</label>
                    <input type="number" name="inches" id="inches" class="form-control" />
                </div>
                <div class="form-group col-sm-4">
                    <label for="weight">Weight (lbs)</label>
                    <input type="number" name="weight" id="weight" class="form-control" />
                </div>
            </div>

            <div class="form-group">
                <label for="rating">Rating</label>
                <input type="text" name="rating" id="rating" class="form-control" />
            </div>
            <div class="form-group">
                <label for="report"><b>Report</b></label>
                <textarea name="report" id="report" rows="5" class="form-control"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Submit Note</button>
        </form>
    </div>
    <c:import url="footer.jsp" />
    </body>
</main>
</html>
