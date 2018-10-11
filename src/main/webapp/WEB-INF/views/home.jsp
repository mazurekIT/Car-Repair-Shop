<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<%--<table border="1" cellpadding="5">--%>
    <%--<tr>--%>
        <%--<td>Imię</td>--%>
        <%--<td>Nazwisko</td>--%>
        <%--<td></td>--%>
    <%--</tr>--%>
    <%--<c:forEach var="lista" items="${lista}">--%>
        <%--<tr>--%>
            <%--<td>${lista.name}</td>--%>
            <%--<td>${lista.lastname}</td>--%>
            <%--<td>--%>
                <%--<a href="/employee_recent?employee_id=${lista.id}">--%>
                    <%--<button type="button" class="btn btn-employee">AKTUALNE ZLECENIA</button>--%>
                <%--</a>--%>
            <%--</td>--%>
        <%--</tr>--%>
    <%--</c:forEach>--%>

<%--</table>--%>



<div class="panel panel-default">
    <div class="panel-heading">
        <h3>AKTUALNE ZLECENIA<h3>
    </div>
    <!-- /.panel-heading -->
    <div class="panel-body">
        <div class="table-responsive">
            <table class="table table-striped table-bordered table-hover">
                <thead>
                <tr>
                    <td>Imię</td>
                    <td>Nazwisko</td>
                    <td></td>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="lista" items="${lista}">
                    <tr>
                        <td>${lista.name}</td>
                        <td>${lista.lastname}</td>
                        <td>
                            <a href="/employee_recent?employee_id=${lista.id}">
                                <button type="button" class="btn btn-employee">AKTUALNE ZLECENIA</button>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <!-- /.table-responsive -->
    </div>
    <!-- /.panel-body -->
</div>