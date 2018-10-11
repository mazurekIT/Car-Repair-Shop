<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<table border="1" cellpadding="5">

    <tr>
        <td>Id</td>
        <td>Status</td>
    </tr>

    <c:forEach var="status" items="${Lista}">
        <tr>
            <td>${status.id}</td>
            <td>${status.status}</td>
        </tr>
    </c:forEach>
</table>
<br>
<a href="/status_save">
    <button type="button" class="btn btn-raport">DODAJ STATUS</button>
</a>

