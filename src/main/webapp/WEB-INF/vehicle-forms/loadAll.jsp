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
        <td>Historia</td>
        <td>Edycja</td>
        <td>Usuwanie</td>
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
            <td>
                <a href="/vehicle_history?vehicle_id=${vehicle.id}">
                    <button type="button" class="btn btn-raport">Historia zleceń</button>
                </a>
            </td>
            <td>
                <a href="/vehicle_update?id=${vehicle.id}&model=${vehicle.model}&brand=${vehicle.brand}&production_year=${vehicle.production_year}&plate_number=${vehicle.plate_number}&next_service_date=${vehicle.next_service_date}&customer_id=${vehicle.customer_id}">
                    <button type="button" class="btn btn-raport">EDYTUJ</button>
                </a>
            </td>
            <td>
                <a href="/vehicle_delete?id=${vehicle.id}">
                    <button type="button" class="btn btn-raport">USUŃ</button>
                </a>
            </td>

        </tr>
    </c:forEach>
</table>
<br>
<a href="/vehicle_save">
    <button type="button" class="btn btn-raport">Dodaj samochód</button>
</a>

