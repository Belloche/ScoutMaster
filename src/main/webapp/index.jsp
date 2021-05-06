<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<title>Scout Master</title>
<link rel="stylesheet" href="master.css">
<c:import url="bootstrap.jsp" />
<body>
<c:import url="nav.jsp" />

    <div class="container bg-white">
        <h1>Welcome to ScoutMaster</h1>
        <p>ScoutMaster is my personal NFL prospect notebook. I post regular updates on NFL prospects for the NFL
            draft, so you can look up what I think about potential draft picks. I'll give their measurables and notes
            I have on how they play.</p>
    </div>
        <c:set var="i" value="${1}" />
        <c:forEach var="note" items="${notes}">
            <c:if test="${i == 1}">
                <div class="row">
            </c:if>
            <div class="container bg-white thumbnail col-md-3">
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
            <c:choose>
                <c:when test="${i ==2}">
                    </div>
                    <c:set var="i" value="${1}" />
                </c:when>
                <c:when test="${i == 1}">
                    <c:set var="i" value="${2}" />
                </c:when>
            </c:choose>
        </c:forEach>


</body>
<c:import url="footer.jsp" />
</html>
