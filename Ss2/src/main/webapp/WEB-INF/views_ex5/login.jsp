<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 06/04/2026
  Time: 10:56 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://jakarta.ee/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Đăng nhập</h2>

<form method="post" action="<c:url value='/login'/>">
    Username: <input type="text" name="username"/><br>
    Password: <input type="password" name="password"/><br>
    <button type="submit">Login</button>
</form>

<c:if test="${not empty errorMessage}">
    <p style="color:red">
        <c:out value="${errorMessage}"/>
    </p>
</c:if>

</body>
</html>
