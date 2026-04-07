<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 07/04/2026
  Time: 7:30 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h2 style="text-align: center">Danh sách nhân viên phòng Đào tạo</h2>
<table border="1" style="width: 100%; text-align: center">
    <tr>
        <th>ID</th>
        <th>Họ tên</th>
        <th>Phòng Ban</th>
        <th>Lương</th>
        <th>Đánh giá</th>
    </tr>
    <c:forEach var="employee" items="${employees}">
        <tr>
            <td>${employee.id}</td>
            <td>${employee.fullName}</td>
            <td>${employee.department}</td>
            <td>${employee.salary}</td>
        <td>
        <c:choose>
            <c:when test="${employee.salary >=10000}">Mức lương cao</c:when>
            <c:otherwise>Mức lương cơ bản</c:otherwise>
        </c:choose>
        </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
