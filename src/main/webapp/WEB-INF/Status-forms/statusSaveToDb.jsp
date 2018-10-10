<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--TODO czy można to jakoś umieścić w filtrze--%>


<form action="/status_save" method="post">
    <label>
        Status:
        <input type="text" name="status">
    </label>
    <br>
    <input type="submit" value="Wyślij">
</form>
