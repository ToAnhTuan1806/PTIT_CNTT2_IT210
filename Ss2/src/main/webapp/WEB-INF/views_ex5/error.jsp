<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 06/04/2026
  Time: 11:01 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://jakarta.ee/jstl/core" %>
<h2>Lỗi hệ thống</h2>

<p style="color:red">
    <c:out value="${errorMessage}"/>
</p>

<a href="<c:url value='/employees'/>">Quay lại</a>
