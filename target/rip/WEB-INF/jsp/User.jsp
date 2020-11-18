<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Пользователь</title>
</head>
<% //In case, if User session is not set, redirect to Login page.
    if((request.getSession(false).getAttribute("User")== null) )
    {
%>
<jsp:forward page="/WEB-INF/jsp/Login.jsp"></jsp:forward>
<%} %>
<body>
<center><h2>Страница пользователя</h2></center>
Добро пожаловать,  <%=request.getAttribute("userName") %>

<div style="text-align: right"><a href="<%=request.getContextPath()%>/LogoutServlet">Выйти</a></div>

</body>
</html>
