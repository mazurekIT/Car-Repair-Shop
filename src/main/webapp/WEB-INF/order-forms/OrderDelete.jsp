<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form action="/order_delete" method="POST">
    <label>
        Id Zlecenia:
        <input type="number" name="id"><br><br>
    </label>
    <input type="submit">
</form>