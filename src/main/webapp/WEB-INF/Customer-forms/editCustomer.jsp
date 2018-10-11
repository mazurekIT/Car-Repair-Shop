<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<form action="/CustomerUpdate" method="post">


    <label>
        Id:
        <input type="number" name="id" value="${id}">

    </label><br>

    <label>
        Imię:
        <input type="text" name="name" value="${name}">

    </label><br>
    <label>
        Nazwisko:
        <input type="text" name="surname" value="${surname}">
    </label>
    <br>
    <label>
        Data urodzenia:
        <input type="date" name="birthDate" value="${birthDate}">
    </label>
    </label>
    <br>
    <label>
        Numer telefonu:
        <input type="number" name="customer_phone" value="${customer_phone}">
    </label>
    <br>
    <input type="submit" value="Wyślij">


</form>