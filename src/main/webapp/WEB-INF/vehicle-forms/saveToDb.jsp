<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--TODO czy można to jakoś umieścić w filtrze--%>


<form action="/employee_save" method="post">
    <label>
        Marka:
        <input type="text" name="brand">
    </label>
    <label>
        Model:
        <input type="text" name="model">
    </label>
    <label>
        Rok produkcji:
        <input type="number" name="production_date">
    </label>
    <label>
        Nr rejestracyjny:
        <input type="text" name="plate_number">
    </label>
    <label>
        Data kolejnego przeglądu:
        <input type="date" name="next_service_date">
    </label>
    <label>
        Id klienta:
        <input type="number" name="customer_id">
    </label>
    <input type="submit" value="Wyślij">
</form>
