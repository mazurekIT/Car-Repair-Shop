<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--TODO czy można to jakoś umieścić w filtrze--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<jsp:include page="header.jsp"/>


<jsp:include page="${link}"/>


<jsp:include page="footer.jsp"/>

</body>
</html>