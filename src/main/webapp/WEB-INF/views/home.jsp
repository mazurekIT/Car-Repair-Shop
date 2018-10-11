<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table>
    <tr>
        <td>Imię</td>
        <td>Nazwisko</td>

    </tr>
    <c:forEach var="lista" items="${lista}">
        <tr>
            <td>${lista.name}</td>
            <td>${lista.lastname}</td>
            <td>
                <a href="/employee_recent?employee_id=${lista.id}">
                    <button type="button" class="btn btn-employee">AKTUALNE ZLECENIA</button>
                </a>

            </td>
        </tr>
    </c:forEach>

</table>


<br>
<br>
<a href="/status_load_all">
    <button type="button" class="btn btn-status">STATUSY</button>
</a>
<br>
<br>

aktualnie prowadzonych naprawy przez każdego z pracowników z możliwością przejścia do
konkretnego zlecenia.
<br>
<br>
<br>



