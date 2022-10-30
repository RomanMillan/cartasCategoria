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
		<%int idCategory = Integer.parseInt(request.getParameter("key"));	 %>
			<table>
			<tr>
				<td colspan="5">Añadir Carta</td>
				<td rowspan="2" colspan="3">
					<a href="Main.jsp"><button>Atras</button></a>
				</td>
			</tr>
				<tr>
					<td colspan="5">
						<a href="AddFormCard.jsp?key=<%=idCategory%>">
							<img width=100px id=add src=../images/add.png >
						</a>
					</td>
				</tr>
				<tr>
					<td>Nombre</td>
					<td>Precio</td>
					<td>Adquisición</td>
					<td>Disponibilidad</td>
					<td>Modificar</td>
					<td>Borrar</td>
				</tr>
				
				<%	
					Card card = new Card();
					
					Category cat = CategoryControl.getCategory(idCategory);
					
					Set<Card> cards = cat.getCard();
							
					StringBuilder text = new StringBuilder();
					for(Card i: cards){
						text.append("<tr><td>"+i.getName()+"</td>");
						text.append("<td>"+i.getPrice()+"</td>");
						text.append("<td>"+i.getAcquisition()+"</td>");
						text.append("<td>"+card.isAvailability(i.isDeck_cards())+"</td>");
						text.append("<td><a href='ModFormCard.jsp?key="+idCategory+"&keyCard="+i.getCode()+"'><img width=50px id=modify src=../images/mod.png ></a></td>");
						text.append("<td><a href='ConfirmDeleteCard.jsp?key="+idCategory+"&keyCard="+i.getCode()+"'><img width=50px id=delete src=../images/dele.png ></a></td>");
						
						text.append("</tr>");
					 } 

				%>
			
				<%=text.toString()%>
			</table>
		</div>
	</body>
</html>