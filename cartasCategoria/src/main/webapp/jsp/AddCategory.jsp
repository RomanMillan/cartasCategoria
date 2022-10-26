<%@page import="com.jacaranda.Category"%>
<%@page import="com.jacaranda.CategoryControl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/Main.css" type="text/css">
	<link rel="shortcut icon" href="../images/icon.png">
</head>
<body>
	<%
		String nameCategory = request.getParameter("nameC");
		CategoryControl c = new CategoryControl();
		Category category = new Category();
		category.setNameCategory(nameCategory);
		c.addCategory(category);
		
	%>
	
	<jsp:forward page="Main.jsp"></jsp:forward>
</body>
</html>