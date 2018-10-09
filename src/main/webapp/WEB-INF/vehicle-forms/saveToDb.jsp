<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--TODO czy można to jakoś umieścić w filtrze--%>


<form action="/vehicleSave" method="post">
    Marka:
    <input type="text" name="brand">
    <br>
    Model:
    <input type="text" name="model">
    <br>
    Rok produkcji:
    <input type="number" name="production_date">
    <br>
    Nr rejestracyjny:
    <input type="text" name="plate_number">
    <br>
    Data kolejnego przeglądu:
    <input type="date" name="next_service_date">
    <br>
    Id klienta:
    <input type="number" name="customer_id">
    <br>
    <input type="submit" value="Wyślij">



</form>
