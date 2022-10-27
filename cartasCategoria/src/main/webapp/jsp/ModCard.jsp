<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@page import="com.jacaranda.CardControl"%>
        <%@page import="com.jacaranda.Card"%>
        <%@page import="java.sql.Date"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			//cogemos los parametros
			String nameCard = request.getParameter("nameCard");
			Double price = Double.parseDouble(request.getParameter("price"));
			String date = request.getParameter("date");
			Boolean deck_cards = true; //request.getParameter("deck_cards");
			int idCategory = Integer.parseInt(request.getParameter("key"));
			int idCard = Integer.parseInt(request.getParameter("idCard"));
			
			
			//Recogemos la carta a buscar
			CardControl c = new CardControl();
			Card card = c.getCard(idCard);
			
			//cambiamos los datos
			//card.setCateg(category);
			card.setName(nameCard);
			card.setPrice(price);
			card.setAcquisition(date);
			card.setDeck_cards(deck_cards);
			
			//añadimos la 
			c.modCard(card);
		%>
		<jsp:forward page="ShowCards.jsp?key=<%= idCategory%>"></jsp:forward>
	</body>
</html>