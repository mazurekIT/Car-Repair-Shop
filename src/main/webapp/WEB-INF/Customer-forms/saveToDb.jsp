<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<form action="/customer_save" method="post">
    <label>
        Imię:
        <input type="text" name="name">

    </label><br>
    <label>
        Nazwisko:
        <input type="text" name="surname">
    </label>
    <br>
    <label>
        Data urodzenia:
        <input type="date" name="birthdate">
    </label>
    <br>
    <label>
        Numer telefonu:
        <input type="text" name="customer_phone">
    </label>
    <br>
    <input type="submit" value="Wyślij">
</form>