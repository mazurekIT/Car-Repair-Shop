<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--TODO czy można to jakoś umieścić w filtrze--%>


<form action="/vehicle_save" method="post">
    <label>
        Marka:
        <input type="text" name="brand">
    </label>
    <br>
    <label>
        Model:
        <input type="text" name="model">
    </label>
    <br>
    <label>
        Rok produkcji:
        <input type="number" name="production_date">
    </label>
    <br>
    <label>
        Nr rejestracyjny:
        <input type="text" name="plate_number">
    </label>
    <br>
    <label>
        Data kolejnego przeglądu:
        <input type="date" name="next_service_date">
    </label>
    <br>
    <label>
        Id klienta:
        <input type="number" name="customer_id">
    </label>
    <br>
    <input type="submit" value="Wyślij">
</form>
