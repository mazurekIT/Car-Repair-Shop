<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<table border="1" cellpadding="5">

    <tr>
        <td>Id</td>
        <td>Marka</td>
        <td>Model</td>
        <td>Rok produkcji</td>
        <td>Nr rejestracji</td>
        <td>Następny przegląd</td>
        <td>Id klienta</td>
    </tr>

    <c:forEach var="vehicle" items="${Lista}">
        <tr>
            <td>${vehicle.id}</td>
            <td>${vehicle.brand}</td>
            <td>${vehicle.model}</td>
            <td>${vehicle.production_year}</td>
            <td>${vehicle.plate_number}</td>
            <td>${vehicle.next_service_date}</td>
            <td>${vehicle.customer_id}</td>
        </tr>
    </c:forEach>
</table>

<a href="/4"><button type="button" class="btn btn-raport">Dodaj samochód</button></a>

