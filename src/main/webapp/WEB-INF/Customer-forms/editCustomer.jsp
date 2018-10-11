<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<form action="/CustomerUpdate" method="post">
    <table>
        <tr>
            <td>Id:</td>
            <td><input type="number" name="id" value="${id}" readonly></td>
        </tr>
        <tr>
            <td> Imię:</td>
            <td><input type="text" name="name" value="${name}"></td>
        </tr>
        <tr>
            <td> Nazwisko:</td>
            <td><input type="text" name="surname" value="${surname}"></td>
        </tr>
        <tr>
            <td> Data urodzenia:</td>
            <td><input type="date" name="birthDate" value="${birthDate}"></td>
        </tr>
        <tr>
            <td> Numer telefonu:</td>
            <td><input type="number" name="customer_phone" value="${customer_phone}"></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Zapisz"></td>
        </tr>
    </table>


    <%--<label>--%>
    <%--Id:--%>
    <%--<input type="number" name="id" value="${id}">--%>

    <%--</label><br>--%>

    <%--<label>--%>
    <%--Imię:--%>
    <%--<input type="text" name="name" value="${name}">--%>

    <%--</label><br>--%>
    <%--<label>--%>
    <%--Nazwisko:--%>
    <%--<input type="text" name="surname" value="${surname}">--%>
    <%--</label>--%>
    <%--<br>--%>
    <%--<label>--%>
    <%--Data urodzenia:--%>
    <%--<input type="date" name="birthDate" value="${birthDate}">--%>
    <%--</label>--%>
    <%--</label>--%>
    <%--<br>--%>
    <%--<label>--%>
    <%--Numer telefonu:--%>
    <%--<input type="number" name="customer_phone" value="${customer_phone}">--%>
    <%--</label>--%>
    <%--<br>--%>
    <%--<input type="submit" value="Wyślij">--%>


</form>