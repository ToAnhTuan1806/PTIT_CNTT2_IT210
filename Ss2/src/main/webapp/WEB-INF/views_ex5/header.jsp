<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 06/04/2026
  Time: 9:36 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://jakarta.ee/jstl/core" %>

<div>
    Xin chào: <c:out value="${sessionScope.loggedUser}"/>

    | <a href="<c:url value='/employees'/>">Danh sách NV</a>
    | <a href="<c:url value='/logout'/>">Đăng xuất</a>

    <c:if test="${sessionScope.role == 'hr_manager'}">
        | <span style="color:green">Manager</span>
    </c:if>

    <c:if test="${sessionScope.role == 'hr_staff'}">
        | <span style="color:blue">Staff</span>
    </c:if>
</div>

<hr/>
