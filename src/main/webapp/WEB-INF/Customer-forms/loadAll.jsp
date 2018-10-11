<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<table border="1" cellpadding="5">
    <tr>
        <td>Id</td>
        <td>Imię</td>
        <td>Nazwisko</td>
        <td>Data urodzenia</td>
        <td>Numer telefonu</td>
        <td>Edycja</td>
        <td>Usuwanie</td>
    </tr>

    <c:forEach var="lis" items="${listadanych}">

        <tr>
            <td>${lis.id}</td>
            <td>${lis.name}</td>
            <td>${lis.surname}</td>
            <td>${lis.birthDate}</td>
            <td>${lis.customer_phone}</td>
            <td><a href=CustomerUpdate?id=${lis.id}&name=${lis.name}&surname=${lis.surname}&birthDate=${lis.birthDate}&customer_phone=${lis.customer_phone}>
                <button type="button" class="btn btn-employee">EDYTUJ</button>
            </a></td>
            <td><a href=customer_delete?id=${lis.id}>
                <button type="button" class="btn btn-employee">USUŃ</button>
            </a></td>
        </tr>

    </c:forEach>

</table>
<br>
<a href="/customer_save">
    <button type="button" class="btn btn-employee">DODAJ KLIENTA</button>
</a>
<br>

<form action="/customer_found" method="post">
    <label>
        Wyszukaj klienta po nazwisku:
        <input type="text" name="surname">
    </label>
    <input type="submit" class="btn btn-employee" value="Szukaj">
</form>


