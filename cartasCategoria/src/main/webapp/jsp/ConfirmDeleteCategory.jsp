<%@page import="com.jacaranda.Category"%>
<%@page import="com.jacaranda.CategoryControl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	int idCategory=Integer.parseInt(request.getParameter("key"));
	CategoryControl c =new CategoryControl();
	c.deleteCategory(c.getCategory(idCategory));
	%>
	<jsp:forward page="Main.jsp"></jsp:forward>
</body>
</html>