<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<table border="1" cellpadding="5">

    <c:forEach var="lis" items ="${lista}">

        <tr>

            <td>${lis.id}</td>
            <td>${lis.name}</td>
            <td>${lis.surname}</td>
            <td>${lis.birthDate}</td>
            <%--<td>${lis.customer_phone}</td>--%>

        </tr>

    </c:forEach>

</table>

<a href="/addCustomer"><button type="button" class="btn btn-employee">DODAJ KLIENTA</button></a>