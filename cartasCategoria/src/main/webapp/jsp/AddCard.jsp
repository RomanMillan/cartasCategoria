<%@page import="com.jacaranda.Category"%>
<%@page import="com.jacaranda.CategoryControl"%>
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
			
			//creamos los objetos necesarios
			CardControl c = new CardControl();
			Card card = new Card();
			CategoryControl categoryC = new CategoryControl();
			Category category = categoryC.getCategory(idCategory);
			
			//insertamos los datos
			card.setCateg(category);
			card.setName(nameCard);
			card.setPrice(price);
			card.setAcquisition(date);
			card.setDeck_cards(deck_cards);
			
			//añadimos la 
			c.addCard(card);
		%>	
		<jsp:forward page='ShowCards.jsp?key="<%= idCategory %>"'></jsp:forward>
	</body>
</html>