<%@page import="com.jacaranda.CardControl"%>
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
			int idCard= Integer.parseInt(request.getParameter("keyCard"));
			CardControl.deleteCard(CardControl.getCard(idCard));
		%>
			<jsp:forward page="ShowCards.jsp"></jsp:forward>
	</body>
</html>