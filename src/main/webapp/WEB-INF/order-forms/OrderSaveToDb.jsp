<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form action="order_save" method="POST">
    <label>
        Data przyjęcia:
        <input type="date" name="date_in">
    </label>
    <br>
    <label>
        Data zakończenia:
        <input type="date" name="date_out">
    </label>
    <br>
    <label>
        Data rozpoczęcia:
        <input type="date" name="started_date" required>
    </label>
    <br>
    <label>
        Employee_id:
        <input type="number" name="employee_id">
    </label>
    <br>
    <label>
        Uszkodzenia:
        <input type="text" name="issue_note">
    </label>
    <br>
    <label>
        Naprawa:
        <input type="text" name="repair_note">
    </label>
    <br>
    <label>
        Status_id:
        <input type="number" name="status_id">
    </label>
    <br>
    <label>
        Vehicle_id:
        <input type="number" name="vehicle_id">
    </label>
    <br>
    <label>
        Koszt naprawy:
        <input type="number" name="repair_cost">
    </label>
    <br>
    <label>
        Koszty części:
        <input type="number" name="parts_cost">
    </label>
    <br>
    <label>
        Roboczogodziny:
        <input type="numbers" name="man_hours">
    </label>
    <br>
    <input type="submit" value="Wyślij">
</form>


