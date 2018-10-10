<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table border="1" cellpadding="5">
    <tr>
        <td>Id</td>
        <td>Imię</td>
        <td>Nazwisko</td>
        <td>Adres</td>
        <td>Numer Telefonu</td>
        <td>Notatka</td>
        <td>Koszt roboczogodziny</td>
    </tr>
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
<br>
<a href="/employee_save">
    <button type="button" class="btn btn-employee">DODAJ PRACOWNIKA</button>
</a>
