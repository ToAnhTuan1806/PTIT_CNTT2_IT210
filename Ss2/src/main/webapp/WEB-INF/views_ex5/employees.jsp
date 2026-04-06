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

<h2>Danh sách nhân viên</h2>

<table border="1">
    <tr>
        <th>STT</th>
        <th>Tên</th>
        <th>Phòng ban</th>
        <th>Lương</th>
        <th>Ngày vào</th>
        <th>Trạng thái</th>
        <th></th>
    </tr>

    <c:forEach var="e" items="${employees}" varStatus="st">
        <tr>
            <td>${st.count}</td>

            <td><c:out value="${e.name}"/></td>

            <td>${e.department}</td>

            <td>
                <fmt:formatNumber value="${e.salary}" type="currency"/>
            </td>

            <td>
                <fmt:formatDate value="${e.joinDate}" pattern="dd/MM/yyyy"/>
            </td>

            <td>
                <c:choose>
                    <c:when test="${e.status == 'Đang làm'}">
                        <span style="color:green">${e.status}</span>
                    </c:when>
                    <c:when test="${e.status == 'Nghỉ phép'}">
                        <span style="color:orange">${e.status}</span>
                    </c:when>
                    <c:otherwise>
                        <span style="color:blue">${e.status}</span>
                    </c:otherwise>
                </c:choose>
            </td>

            <td>
                <a href="<c:url value='/employees/${e.code}'/>">
                    Xem chi tiết
                </a>
            </td>
        </tr>
    </c:forEach>
</table>

<p>
    Tổng lương phòng Kỹ thuật:
    <fmt:formatNumber value="${totalTechSalary}" type="currency"/>
</p>

<%@ include file="footer.jsp" %>
