<%@page import="com.jacaranda.CategoryControl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String nameCategory = request.getParameter("nameC");
		
	 int idCategory= Integer.parseInt(request.getParameter("idCategory"));
	
	
	CategoryControl c =new CategoryControl();
	c.modCategory(nameCategory,idCategory);
	%>
	<jsp:forward page="Main.jsp"></jsp:forward>

</body>
</html>