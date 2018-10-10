<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form action="/employee_save" method="POST">
    <label>
        Imię:
        <input type="text" name="name">
    </label>
    <br>
    <label>
        Nazwisko:
        <input type="text" name="lastname">
    </label>
    <br>
    <label>
        Adres:
        <input type="text" name="adress">
    </label>
    <br>
    <label>
        Numer telefonu:
        <input type="text" name="employee_phone">
    </label>
    <br>
    <label>
        Notatka:
        <input type="text" name="note">
    </label>
    <br>
    <label>
        Koszty roboczogodziny:
        <input type="number" name="hourly">
    </label>
    <br>
    <input type="submit" value="Wyślij">


</form>