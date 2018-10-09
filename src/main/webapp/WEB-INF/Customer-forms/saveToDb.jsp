<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<form action="/customer_save" method="post">
    <label>
        Imię:
        <input type="text" name="name"><br>
    </label>
    <label>
        Nazwisko:
        <input type="text" name="surname"><br>
    </label>
    <label>
        Data urodzenia:
        <input type="date" name="birthdate"><br>
    </label>
    <label>
        Numer telefonu:
        <input type="text" name="customerPhone"><br>
    </label>
    <input type="submit" value="Wyślij">
</form>