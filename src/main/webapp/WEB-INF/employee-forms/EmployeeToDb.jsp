<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form action="/employee_save" method="POST">
    <label>
        Imię:
        <input type="text" name="name">
    </label>
    <label>
        Nazwisko:
        <input type="text" name="lastname">
    </label>
    <label>
        Adres:
        <input type="text" name="adress">
    </label>
    <label>
        Numer telefonu:
        <input type="number" name="employee_phone">
    </label>
    <label>
        Notatka:
        <input type="text" name="note">
    </label>
    <label>
        Koszty roboczogodziny:
        <input type="number" name="hourly">
    </label>
    <input type="submit" value="Wyślij">


</form>