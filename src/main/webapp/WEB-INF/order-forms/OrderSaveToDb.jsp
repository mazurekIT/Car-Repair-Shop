<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form action="order_save" method="POST">
    <label>
        Data przyjęcia:
        <input type="date" name="date_in">
    </label>
    <label>
        Data zakończenia:
        <input type="date" name="date_out">
    </label>
    <label>
        Data rozpoczęcia:
        <input type="date" name="started_date">
    </label>
    <label>
        Employee_id:
        <input type="number" name="employee_id">
    </label>
    <label>
        Uszkodzenia:
        <input type="text" name="issue_note">
    </label>
    <label>
        Naprawa:
        <input type="text" name="repair_note">
    </label>
    <label>
        Status_id:
        <input type="number" name="status_id">
    </label>
    <label>
        Vehicle_id:
        <input type="number" name="vehicle_id">
    </label>
    <label>
        Koszt naprawy:
        <input type="number" name="repair_cost">
    </label>
    <label>
        Koszty części:
        <input type="number" name="parts_cost">
    </label>
    <label>
        Roboczogodziny:
        <input type="numbers" name="man_hours">
    </label>
    <input type="submit" value="Wyślij">
</form>


