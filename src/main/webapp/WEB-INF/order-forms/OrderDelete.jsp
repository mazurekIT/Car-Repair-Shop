<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form action="order_delete" method="POST">
    <label>
        Czy na pewno chcesz usunąć zlecenie o ID:
        <input type="number" name="id" value="${id}" readonly>

    </label>
    <br>
    <input type="submit">
</form>