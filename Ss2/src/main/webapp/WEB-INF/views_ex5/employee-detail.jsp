<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 06/04/2026
  Time: 11:00 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="header.jsp" %>

<%@ taglib prefix="c" uri="http://jakarta.ee/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://jakarta.ee/jstl/fmt" %>

<h2>Chi tiết nhân viên</h2>

<p>Mã: ${emp.code}</p>
<p>Tên: <c:out value="${emp.name}"/></p>
<p>Phòng: ${emp.department}</p>

<p>
    Lương:
    <c:choose>
        <c:when test="${sessionScope.role == 'hr_manager'}">
            <fmt:formatNumber value="${emp.salary}" type="currency"/>
        </c:when>
        <c:otherwise>
            ***
        </c:otherwise>
    </c:choose>
</p>

<p>
    Ngày vào:
    <fmt:formatDate value="${emp.joinDate}" pattern="dd/MM/yyyy"/>
</p>

<p>Trạng thái: ${emp.status}</p>

<a href="<c:url value='/employees'/>">Quay lại</a>

<%@ include file="footer.jsp" %>