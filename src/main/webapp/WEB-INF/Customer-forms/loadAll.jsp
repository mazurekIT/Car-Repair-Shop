<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<table border="1" cellpadding="5">
    <tr>
        <td>Id</td>
        <td>Imię</td>
        <td>Nazwisko</td>
        <td>Data urodzenia</td>
        <td>Numer telefonu</td>
        <td>Pojazdy klienta</td>
    </tr>

    <c:forEach var="lis" items="${listadanych}">

        <tr>
            <td>${lis.id}</td>
            <td>${lis.name}</td>
            <td>${lis.surname}</td>
            <td>${lis.birthDate}</td>
            <td>${lis.customer_phone}</td>
            <%--<td><a href="/vehicle_update?id=${vehicle.id}"><button type="button" class="btn btn-raport">Lista Samochodów</button></td>--%>
        </tr>

    </c:forEach>

</table>
<br>
<a href="/customer_save">
    <button type="button" class="btn btn-employee">DODAJ KLIENTA</button>
</a>