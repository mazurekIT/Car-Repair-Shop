<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<table border="1" cellpadding="5">
    <tr>
        <td>Id</td>
        <td>Data przyjęcia</td>
        <td>Przewidywana data zakończenia</td>
        <td>Rozpoczęcie naprawy</td>
        <td>Id pracownika</td>
        <td>Opis problemu</td>
        <td>Opis naprawy</td>
        <td>Status</td>
        <td>Id pojazdu</td>
        <td>Koszt naprawy</td>
        <td>Koszt części</td>
        <td>Roboczogodziny</td>
        <td>Edytuj</td>
        <td>Usuń</td>
    </tr>
    <c:forEach var="lista" items="${lista}">
        <tr>
            <td>${lista.id}</td>
            <td>${lista.date_in}</td>
            <td>${lista.date_out}</td>
            <td>${lista.started_date}</td>
            <td>${lista.employee_id}</td>
            <td>${lista.issue_note}</td>
            <td>${lista.repair_note}</td>
            <td>
                <c:choose>
                    <c:when test="${lista.status_id==1}">
                            Przyjęty
                    </c:when>
                    <c:when test="${lista.status_id==2}">
                        Zatwierdzone koszty naprawy
                    </c:when>
                    <c:when test="${lista.status_id==3}">
                        W naprawie
                    </c:when>
                    <c:when test="${lista.status_id==4}">
                        Gotowy do odbioru
                    </c:when>
                    <c:when test="${lista.status_id==5}">
                        Rezygnacja
                    </c:when>
                    <c:otherwise>
                        Inne
                    </c:otherwise>
                </c:choose>
            </td>
            <td>${lista.vehicle_id}</td>
            <td>${lista.repair_cost}</td>
            <td>${lista.parts_cost}</td>
            <td>${lista.man_hours}</td>

            <td>
                <a href = order_update?id=${lista.id}&date_in=${lista.date_in}&date_out=${lista.date_out}&started_date=${lista.started_date}&employee_id=${lista.employee_id}&issue_note=${lista.issue_note}&repair_note=${lista.repair_note}&status_id=${lista.status_id}&vehicle_id=${lista.vehicle_id}&repair_cost=${lista.repair_cost}&parts_cost=${lista.parts_cost}&man_hours=${lista.man_hours}>
                    <button type = "button" class="btn btn-order">Edytuj</button>
                </a>
            </td>
            <td>
                <a href = order_delete?id=${lista.id}>
                    <button type = "button" class="btn btn-order">Usuń</button>
                </a>
            </td>
        </tr>
    </c:forEach>
</table>
<br>
<a href="/order_save">
    <button type="button" class="btn btn-order">Dodaj nowe zlecenie</button>
</a>