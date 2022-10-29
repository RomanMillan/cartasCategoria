<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.jacaranda.ConnectionDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		ConnectionDAO s = new ConnectionDAO();
		s.closeSession();
	%>
	<jsp:forward page="../html/Index.html"></jsp:forward>
</body>
</html>