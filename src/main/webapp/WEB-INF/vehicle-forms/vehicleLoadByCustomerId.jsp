

${customer_id}


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
        <%--<td>Edycja</td>--%>
        <%--<td>Usuwanie</td>--%>
    </tr>

    <c:forEach var="vehicleList" items="${vehicleDaosList}">
        <tr>
            <td>${vehicleList.id}</td>
            <td>${vehicleList.brand}</td>
            <td>${vehicleList.model}</td>
            <td>${vehicleList.production_year}</td>
            <td>${vehicleList.plate_number}</td>
            <td>${vehicleList.next_service_date}</td>
            <td>${vehicleList.customer_id}</td>
            <%--<td><a href="/vehicle_update?id=${vehicle.id}&model=${vehicle.model}&brand=${vehicle.brand}&production_year=${vehicle.production_year}&plate_number=${vehicle.plate_number}&next_service_date=${vehicle.next_service_date}&customer_id=${vehicle.customer_id}"><button type="button" class="btn btn-raport">Edytuj Samochód</button></a></td>--%>
            <%--<td><a href="/vehicle_delete?id=${vehicle.id}"><button type="button" class="btn btn-raport">Usuń Samochód</button></a></td>--%>
        </tr>
    </c:forEach>
</table>