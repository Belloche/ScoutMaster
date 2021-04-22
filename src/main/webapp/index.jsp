<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<title>Scout Master</title>
<link rel="stylesheet" href="master.css">
<c:import url="bootstrap.jsp" />
<body>
<c:import url="nav.jsp" />

    <div class="container bg-white">
        <div class="content">
            <h1>Welcome to ScoutMaster</h1>
            <p>ScoutMaster is my personal NFL prospect notebook. I post regular updates on NFL prospects for the NFL
            draft, so you can look up what I think about potential draft picks. I'll give their measurables and notes
            I have on how they play.</p>
        </div>
        <c:forEach var="note" items="${notes}">
            <div class="content">
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
                </table>
                <a href="fullNote?id=${note.getId()}">View Report</a>
            </div>
        </c:forEach>
    </div>

</body>
</html>
