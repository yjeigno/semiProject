<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jyjun
  Date: 2022-12-08
  Time: 오후 4:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<script>

</script>
<body>
<table>
    <tr>
        <c:forEach var="optionTitle" items="${optionTitle_list}">
            <td>${optionTitle}</td>
        </c:forEach>
    </tr>
    <tr>
        <c:forEach var="size" items="${size_name_list}">
            <td>${size}</td>
        </c:forEach>
    </tr>
    <tr>
        <c:forEach var="color" items="${color_name_list}">
            <td>${color}</td>
        </c:forEach>
    </tr>
    <tr>
        <c:forEach var="pa" items="${pa_list}">
            <td>${pa}</td>
        </c:forEach>
    </tr>
    <tr>
        <c:forEach var="price" items="${price_list}">
            <td>${price}</td>
        </c:forEach>
    </tr>
</table>
<c:forEach var="optionTitle" items="${optionTitle_list}">
    <h1>${optionTitle}</h1>
</c:forEach>
</body>
</html>
