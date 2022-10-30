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
			String deck = request.getParameter("deck_cards");
			boolean deck_cards = false;
			if(deck !=null && deck.equals("on")){
				deck_cards = true;
			}
			
			int idCategory = Integer.parseInt(request.getParameter("key"));
			int idCard = Integer.parseInt(request.getParameter("keyCard"));
			
			
			//Recogemos la carta a buscar
			Card card = CardControl.getCard(idCard);
			
			//cambiamos los datos
			card.setName(nameCard);
			card.setPrice(price);
			card.setAcquisition(date);
			card.setDeck_cards(deck_cards);
			
			//añadimos la 
			CardControl.modCard(card);
		%>
		<jsp:forward page="ShowCards.jsp"></jsp:forward>
	</body>
</html>