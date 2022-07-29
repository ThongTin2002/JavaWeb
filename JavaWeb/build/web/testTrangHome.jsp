<%-- 
    Document   : testTrangHome
    Created on : Jul 25, 2022, 12:14:15 AM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:if test="${sessionScope.user_acc!=null}">
            <h1>Trang Home</h1>
            <a href="#">Hello ${sessionScope.user_acc.name}</a>
            <a href="changepass.jsp">Change Pass</a>
            <a href="<%=request.getContextPath()%>/Profile">Infor</a>
            <a href="logout">Logout</a>
        </c:if>
        <c:if test="${sessionScope.user_acc==null}">
            <h1>Đã đăng xuất</h1>
        </c:if>
    </body>
</html>
