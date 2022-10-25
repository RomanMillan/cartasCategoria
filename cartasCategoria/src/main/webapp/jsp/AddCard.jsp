<%@page import="java.sql.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.jacaranda.CardControl"%>
<%@page import="com.jacaranda.Card"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="../css/Main.css" type="text/css">
		<link rel="shortcut icon" href="../images/icon.png">
	</head>
	<body>
		<%
			String nameCard = request.getParameter("nameCard");
			Double price = Double.parseDouble(request.getParameter("price"));
			String date = request.getParameter("date");
			Boolean deck_cards = true; //request.getParameter("deck_cards");
			
			CardControl c = new CardControl();
			Card card = new Card();
			
			card.setName(nameCard);
			card.setPrice(price);
			card.setAcquisition(date);
			card.setDeck_cards(deck_cards);
			
			c.addCategory(card);
		%>	
		<jsp:forward page="Main.jsp"></jsp:forward>
	</body>
</html>