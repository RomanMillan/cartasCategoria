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
					<td>Nombre</td>
					<td>Precio</td>
					<td>Adquisición</td>
					<td>Disponibilidad</td>
					<td>Añadir</td>
					<td>Borrar</td>
					<td>Modificar</td>
				</tr>
				
				<%	
					Card a = new Card();
					CardControl c = new CardControl();
					List<Card> cards = CardControl.getCard();
					StringBuilder text = new StringBuilder();
					for(Card i: cards){
						text.append("<tr><td>"+i.getName()+"</td>");
						text.append("<td>"+i.getPrice()+"</td>");
						text.append("<td>"+i.getAcquisition()+"</td>");
						text.append("<td>"+a.isAvailability(i.isDeck_cards())+"</td>");
						text.append("<td><a href='../html/AddCategory.html?key="+i.getCode()+"'><img width=50px id=delete src=../images/add.png ></a></td>");
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