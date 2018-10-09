<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<form action="" method="POST">
    <label>
        Data przyjęcia:
        <input type="date" name="date_in"><br><br>
    </label>
    <label>
        Data zakończenia:
        <input type="date" name="date_out"><br><br>
    </label>
    <label>
        Data rozpoczęcia:
        <input type="date" name="started_date"><br><br>
    </label>
    <label>
        Employee_id:
        <input type="number" name="employee_id"><br><br>
    </label>
    <label>
        Uszkodzenia:
        <input type="text" name="issue_note"><br><br>
    </label>
    <label>
        Naprawa:
        <input type="text" name="repair_note"><br><br>
    </label>
    <label>
        status_id:
        <input type="number" name="status_id"><br><br>
    </label>
    <label>
        vehicle_id:
        <input type="number" name="vehicle_id"><br><br>
    </label>
    <label>
        Koszt naprawy:
        <input type="number" name="repair_cost"><br><br>
    </label>
    <label>
        Koszty części:
        <input type="number" name="parts_cost"><br><br>
    </label>
    <label>
        Roboczogodziny:
        <input type="numbers" name="man_hours"><br><br>
    </label>
    <input type="submit" >
</form>


