<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form action="/employee_delete" method="POST">
    <label>
        Czy na pewno chcesz usunac pracownika o tym id:
        <input type="number" name="id" value="${id}" readonly>
    </label>
    <br>
    <input type="submit" value="Wyślij">


</form>