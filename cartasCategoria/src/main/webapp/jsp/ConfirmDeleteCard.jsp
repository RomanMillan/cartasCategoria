<%@page import="com.jacaranda.CardControl"%>
<%@page import="com.jacaranda.Category"%>
<%@page import="com.jacaranda.CategoryControl"%>
<%@page import="com.jacaranda.Card"%>
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
		<%
			int idCategory = Integer.parseInt(request.getParameter("key"));
			int idCard = Integer.parseInt(request.getParameter("keyCard"));
			
			CardControl cardC  = new CardControl();
			Card c = cardC.getCard(idCard);
		%>
		
		<div align="center" id="category">
			<table>
				<tr>
					<td>
						Estas seguro de borrar la carta <%=c.getName()%>
					</td>
					
					
					<td>
						<a href="DeleteCard.jsp?keyCard=<%= idCard%>&key=<%= idCategory%>"><button >Si</button></a>
					</td>
					
					<td>
						<a href="ShowCards.jsp?key=<%= idCategory%>"><button>No</button></a>
					</td>
					
				</tr>
			</table>
		</div>
	</body>
</html>