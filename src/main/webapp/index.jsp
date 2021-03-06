<%--
    JSP for viewing all notes on homepage
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<title>Scout Master</title>
<link rel="stylesheet" href="master.css">
<c:import url="bootstrap.jsp" />
<a href="#mainContent" class="skipLink">Skip</a>
<body>
<c:import url="nav.jsp" />
<main id="mainContent">
    <c:if test="${not empty loggedOut}">
        <div class="alert alert-success" align="center">
            <h2 class="alert-heading" tabindex="0">Success!</h2>
            <p tabindex="0">You have successfully logged out</p>
        </div>
    </c:if>

    <div class="container bg-white">
        <h1 tabindex="0">Welcome to ScoutMaster</h1>
        <p tabindex="0">ScoutMaster is my personal NFL prospect notebook. I post regular updates on NFL prospects for the NFL
            draft, so you can look up what I think about potential draft picks. I'll give their measurables and notes
            I have on how they play.</p>
    </div>

    <div class="row">
        <c:forEach var="note" items="${notes}">
            <div class="container bg-white thumbnail col-md-4">
                <table>
                    <tr>
                        <td>Name</td>
                        <th tabindex="0">${note.getProspect()}</th>
                    </tr>
                    <tr>
                        <td>Position</td>
                        <td tabindex="0">${note.getPosition()}</td>
                    </tr>
                    <tr>
                        <td>College</td>
                        <td tabindex="0">${note.getCollege()}</td>
                    </tr>
                    <tr>
                        <td>Rating</td>
                        <td tabindex="0"><b>${note.getRating()}</b></td>
                    </tr>
                </table>
                <a href="fullNote?id=${note.getId()}" tabindex="0" class="blueLink">View Report</a>
            </div>
        </c:forEach>
    </div>
    <c:import url="footer.jsp" />
    </body>
</main>
</html>
