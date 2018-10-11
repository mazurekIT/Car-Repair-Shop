<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<table border="1" cellpadding="5">
    <tr>
        <td>Id</td>
        <td>Data przyjęcia</td>
    </tr>

    <c:forEach var="raport1" items="${raport1}">
    <tr>
        <td>${raport1.Imie_i_Nazwisko}</td>
        <td>${raport1.Roboczogodziny}</td>
    </tr>
    </c:forEach>
</table>