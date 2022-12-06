<%--
  Created by IntelliJ IDEA.
  User: amety
  Date: 2022-12-06(006)
  Time: 오후 8:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Hanssem</title>
</head>
<body>
<script>
  var msg = "<c:out value="${msg}"/>";
  var url = "<c:out value="${url}"/>";
  alert(msg);
  location.href = url;
</script>
</body>
</html>
