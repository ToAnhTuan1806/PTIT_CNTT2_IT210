<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 06/04/2026
  Time: 8:01 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Ex2</title>
</head>
<body>
<h2>Danh sách sinh viên</h2>

<table border="1">
    <tr>
        <th>Tên</th>
        <th>Điểm</th>
        <th>Xếp loại</th>
    </tr>

    <c:forEach var="student" items="${students}">
        <tr>
            <td>
                <c:out value="${student.name}" />
            </td>
            <td>
                <c:out value="${student.score}" />
            </td>
            <td>
                <c:choose>
                    <c:when test="${student.score >= 8}">
                        Giỏi
                    </c:when>
                    <c:when test="${student.score >= 5}">
                        Khá
                    </c:when>
                    <c:otherwise>
                        Yếu
                    </c:otherwise>
                </c:choose>
            </td>
        </tr>
    </c:forEach>

</table>

<%-- Đây là comment nội bộ, không hiển thị ra trình duyệt --%>
<%-- #	                Vị trí	                            Loại vấn đề	                            Mô tả hậu quả
    1	    <%! private int requestCounter = 0; %>	        Race Condition	        Biến dùng chung giữa nhiều request → dễ bị sai dữ liệu khi nhiều user truy cập cùng lúc
    2	            <% for(...) %>	                        Logic trong View	    Vi phạm nguyên tắc MVC (View chỉ hiển thị, không xử lý logic)
    3	        <%= student.getName() %>	                    XSS	                Nếu dữ liệu từ user → có thể chèn script gây lỗi bảo mật
    4	            <!-- comment -->	                    Sai loại comment	    HTML comment vẫn render ra client → lộ code nội bộ
    5	            <%= something %>;	                Sai cú pháp Expression	    Dấu ; có thể gây lỗi hoặc code không chuẩn
    6	        if/else trong <% %>	                        Logic trong View	    Làm JSP khó đọc, khó maintain
    7	    Java code nhiều trong JSP	                    Code smell	            Khó bảo trì, không đúng chuẩn “View ngốc nghếch”
 --%>

</body>
</html>

