<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table border="1" cellpadding="5">
    <c:forEach var="lista" items="${lista}">
        <tr>
            <td>${lista.id}</td>
            <td>${lista.name}</td>
            <td>${lista.lastname}</td>
            <td>${lista.adress}</td>
            <td>${lista.employee_phone}</td>
            <td>${lista.note}</td>
            <td>${lista.hourly}</td>
        </tr>
    </c:forEach>
</table>