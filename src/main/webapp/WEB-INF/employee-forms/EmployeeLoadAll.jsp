<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div id="dataTables-example_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
    <div class="row">
        <div class="col-sm-12">
            <table width="100%" class="table table-striped table-bordered table-hover dataTable no-footer dtr-inline"
                   id="dataTables-example" role="grid" aria-describedby="dataTables-example_info" style="width: 100%;">
                <thead>
                <tr role="row">
                    <th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1"
                        aria-label="Rendering engine: activate to sort column ascending">
                        Id
                    </th>
                    <th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1"
                        aria-label="Browser: activate to sort column ascending">
                        Imię
                    </th>
                    <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1"
                        aria-label="Platform(s): activate to sort column descending" aria-sort="ascending">
                        Nazwisko
                    </th>
                    <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1"
                        aria-label="Platform(s): activate to sort column descending" aria-sort="ascending">
                        Adres
                    </th>
                    <th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1"
                        aria-label="Engine version: activate to sort column ascending">
                        Nr telefonu
                    </th>
                    <th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1"
                        aria-label="CSS grade: activate to sort column ascending">
                        Notatka
                    </th>
                    <th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1"
                        aria-label="CSS grade: activate to sort column ascending">
                        Koszt roboczogodziny
                    </th>
                    <th class="sorting" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1"
                        aria-label="CSS grade: activate to sort column ascending">
                        Edycja
                    </th>
                    <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1"
                        aria-label="Platform(s): activate to sort column descending" aria-sort="ascending">
                        Usuwanie
                    </th>
                    <th class="sorting_asc" tabindex="0" aria-controls="dataTables-example" rowspan="1" colspan="1"
                        aria-label="Platform(s): activate to sort column descending" aria-sort="ascending">
                        Historia zleceń
                    </th>
                </tr>
                </thead>
                <tbody>

                <c:forEach var="lista" items="${lista}">
                    <tr>
                        <td>${lista.id}</td>
                        <td>${lista.name}</td>
                        <td>${lista.lastname}</td>
                        <td>${lista.adress}</td>
                        <td>${lista.employee_phone}</td>
                        <td>${lista.note}</td>
                        <td>${lista.hourly}</td>
                        <td>
                            <a href="/employee_update?id=${lista.id}&name=${lista.name}&lastname=${lista.lastname}&adress=${lista.adress}&employee_phone=${lista.employee_phone}&note=${lista.note}&hourly=${lista.hourly}">
                                <button type="button" class="btn btn-employee">EDYTUJ</button>
                            </a>

                        </td>
                        <td>
                            <a href="/employee_delete?id=${lista.id}">
                                <button type="button" class="btn btn-employee">USUŃ</button>
                            </a>
                        </td>
                        <td>
                            <a href="/employee_orders?employee_id=${lista.id}">
                                <button type="button" class="btn btn-employee">ZLECENIA PRACOWNIKA</button>
                            </a>

                        </td>
                    </tr>
                </c:forEach>

                <tr>
                    <td colspan="10">
                        <a href="/employee_save">
                            <button type="button" class="btn btn-employee">DODAJ PRACOWNIKA</button>
                        </a>
                    </td>

                </tr>

                </tbody>
            </table>
        </div>
    </div>
</div>


<%--<table border="1" cellpadding="5">--%>
<%--<tr>--%>
<%--<td>Id</td>--%>
<%--<td>Imię</td>--%>
<%--<td>Nazwisko</td>--%>
<%--<td>Adres</td>--%>
<%--<td>Numer Telefonu</td>--%>
<%--<td>Notatka</td>--%>
<%--<td>Koszt roboczogodziny</td>--%>
<%--<td>Edycja</td>--%>
<%--<td>Usuwanie</td>--%>
<%--<td>Historia zleceń</td>--%>

<%--</tr>--%>
<%--<c:forEach var="lista" items="${lista}">--%>
<%--<tr>--%>
<%--<td>${lista.id}</td>--%>
<%--<td>${lista.name}</td>--%>
<%--<td>${lista.lastname}</td>--%>
<%--<td>${lista.adress}</td>--%>
<%--<td>${lista.employee_phone}</td>--%>
<%--<td>${lista.note}</td>--%>
<%--<td>${lista.hourly}</td>--%>
<%--<td>--%>
<%--<a href="/employee_update?id=${lista.id}&name=${lista.name}&lastname=${lista.lastname}&adress=${lista.adress}&employee_phone=${lista.employee_phone}&note=${lista.note}&hourly=${lista.hourly}">--%>
<%--<button type="button" class="btn btn-employee">EDYTUJ</button>--%>
<%--</a>--%>

<%--</td>--%>
<%--<td>--%>
<%--<a href="/employee_delete?id=${lista.id}">--%>
<%--<button type="button" class="btn btn-employee">USUŃ</button>--%>
<%--</a>--%>
<%--</td>--%>
<%--<td>--%>
<%--<a href="/employee_orders?employee_id=${lista.id}">--%>
<%--<button type="button" class="btn btn-employee">ZLECENIA PRACOWNIKA</button>--%>
<%--</a>--%>

<%--</td>--%>
<%--</tr>--%>
<%--</c:forEach>--%>

<%--</table>--%>
<%--<br>--%>
<%--<a href="/employee_save">--%>
<%--<button type="button" class="btn btn-employee">DODAJ PRACOWNIKA</button>--%>
<%--</a>--%>
<%--&lt;%&ndash;<a href="/employee_update">&ndash;%&gt;--%>
<%--&lt;%&ndash;<button type="button" class="btn btn-employee">EDYTUJ PRACOWNIKA</button>&ndash;%&gt;--%>
<%--&lt;%&ndash;</a>--%>