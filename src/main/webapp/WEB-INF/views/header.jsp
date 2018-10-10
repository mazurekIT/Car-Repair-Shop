<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--TODO czy można to jakoś umieścić w filtrze--%>

<header>
    <%--<h1>Witaj w Warsztacie</h1>--%>
    <%--<a href="/customer_load_all"><button type="button" class="btn btn-customer">KLIENCI</button></a>--%>
    <%--<a href="/orders_load_all"><button type="button" class="btn btn-order">ZLECENIA</button></a>--%>
    <%--<a href="/employee_load_all"><button type="button" class="btn btn-employee">PRACOWNICY</button></a>--%>
    <%--<a href="/vehicle_load_all"><button type="button" class="btn btn-raport">RAPORTY</button></a>--%>
    <%--<br>--%>

        <%--4 przyciski MAŁE ładne --%>

        <div class="row">
            <div class="col-xl-3 col-sm-6 mb-3">
                <div class="card text-white bg-primary o-hidden h-5">

                    <a class="card-footer text-white clearfix small z-1" href="/customer_load_all">
                        <span class="float-left">KLIENCI</span>
                        <span class="float-right">
                    <i class="fas fa-angle-right"></i>
                  </span>
                    </a>
                </div>
            </div>
            <div class="col-xl-3 col-sm-6 mb-3">
                <div class="card text-white bg-warning o-hidden h-8">
                    <a class="card-footer text-white clearfix small z-1" href="/orders_load_all">
                        <span class="float-left">ZLECENIA</span>
                        <span class="float-right">
                    <i class="fas fa-angle-right"></i>
                  </span>
                    </a>
                </div>
            </div>
            <div class="col-xl-3 col-sm-6 mb-3">
                <div class="card text-white bg-success o-hidden h-8">
                    <a class="card-footer text-white clearfix small z-1" href="/employee_load_all">
                        <span class="float-left">PRACOWNICY</span>
                        <span class="float-right">
                    <i class="fas fa-angle-right"></i>
                  </span>
                    </a>
                </div>
            </div>
            <div class="col-xl-3 col-sm-6 mb-3">
                <div class="card text-white bg-danger o-hidden h-8">
                    <a class="card-footer text-white clearfix small z-1" href="/vehicle_load_all">
                        <span class="float-left">SAMOCHODY-RAPORTY</span>
                        <span class="float-right">
                    <i class="fas fa-angle-right"></i>
                  </span>
                    </a>
                </div>
            </div>
        </div>
</header>
