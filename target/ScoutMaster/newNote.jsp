<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 4/15/21
  Time: 2:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Scout Master - New Note</title>
    <link rel="stylesheet" href="master.css">
    <c:import url="bootstrap.jsp" />
</head>
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
                <select name="position" id="position" list="positions" required>
                    <c:import url="positions.jsp" />
                </select>
            </div>
            <div class="form-group">
                <select name="university" id="university" list="universities">
                    <option disabled selected value>Select a College</option>
                    <c:forEach var="name" items="${universities}">
                        <option value="${name}">${name}</option>
                    </c:forEach>
                </select>
            </div>
            <div class="form-group">
                <label for="age">Age</label>
                <select name="age" id="age" class="form-control">
                    <option disabled selected value>Choose Age</option>
                    <option value="19">19</option>
                    <option value="20">20</option>
                    <option value="21">21</option>
                    <option value="22">22</option>
                    <option value="23">23</option>
                    <option value="24">24</option>
                    <option value="25">25</option>
                    <option value="26">26</option>
                    <option value="27">27</option>
                    <option value="28">28</option>
                    <option value="29">29</option>
                    <option value="30">30</option>
                </select>
            </div>
            <div class="form-group">
                <label for="feet">Height - Feet</label>
                <input type="number" name="feet" id="feet" class="form-control" />
                <label for="inches">Inches</label>
                <input type="number" name="inches" id="inches" class="form-control" />
            </div>
            <div class="form-group">
                <label for="weight">Weight (lbs)</label>
                <input type="number" name="weight" id="weight" class="form-control" />
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
</html>
