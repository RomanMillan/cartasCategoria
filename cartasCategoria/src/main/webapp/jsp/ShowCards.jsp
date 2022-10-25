<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@page import="com.jacaranda.CategoryControl"%>
<%@page import="com.jacaranda.Category"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="com.jacaranda.CardControl"%>
<%@page import="com.jacaranda.Card"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="../css/Main.css" type="text/css">
		<link rel="shortcut icon" href="../images/icon.png">
	</head>
	<body>
		<div align="center">
			<table>
				<tr>
					<td colspan="6"><a href='../html/AddCard.html'><img width=50px id=add src=../images/add.png ></a></td>
				</tr>
				<tr>
					<td>Nombre</td>
					<td>Precio</td>
					<td>Adquisición</td>
					<td>Disponibilidad</td>
					<td>Borrar</td>
					<td>Modificar</td>
				</tr>
				
				<%	
					Card card = new Card();
					int idCategory = Integer.parseInt(request.getParameter("key"));	
					CategoryControl c = new CategoryControl();
					Category cat = c.getCategory(idCategory);
					
					Set<Card> cards = cat.getCard();
							
					StringBuilder text = new StringBuilder();
					for(Card i: cards){
						text.append("<tr><td>"+i.getName()+"</td>");
						text.append("<td>"+i.getPrice()+"</td>");
						text.append("<td>"+i.getAcquisition()+"</td>");
						text.append("<td>"+card.isAvailability(i.isDeck_cards())+"</td>");
						text.append("<td><a href='DeleteCategory.jsp?key="+i.getCode()+"'><img width=50px id=delete src=../images/mod.png ></a></td>");
						text.append("<td><a href='DeleteCategory.jsp?key="+i.getCode()+"'><img width=50px id=delete src=../images/dele.png ></a></td>");
						
						text.append("</tr>");
					 } 

						
				%>
			
				<%=text.toString()%>
			</table>
		</div>
	</body>
</html>