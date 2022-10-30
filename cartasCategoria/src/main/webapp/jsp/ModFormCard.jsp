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
		
		<%int idCard = Integer.parseInt(request.getParameter("keyCard")); %>
		<%int idCategory = Integer.parseInt(request.getParameter("key")); %>
		<div align="center">
			<table>
				<tr>
					<td>
						Modificar Carta
					</td>
				</tr>
				<form action="ModCard.jsp">
				<tr>
					<td>
						Nombre Carta
					</td>
					<td>
						<input name="nameCard" type="text" required="required">
					</td>
				</tr>
				<tr>
					<td>
						Precio
					</td>
					<td>
						<input name="price" type="number" required="required">
					</td>
				</tr>
				<tr>
					<td>
						Fecha
					</td>
					<td>
						<input name="date" type="date" required="required">
					</td>
				</tr>
				<tr>
					<td>
						Adquisición
					</td>
					<td>
						<input name="deck_cards" type="checkbox">
					</td>
				</tr>
				<tr hidden="true">
					<td>
						<input name="keyCard" value="<%=idCard%>">
					</td>
					<td>
						<input name="key" value="<%=idCategory%>">
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<button>Modificar Carta</button>
					</td>
				</tr>
				</form>
				<tr>
					<td colspan="2">
						<a href="ShowCards.jsp?key=<%=idCategory%>"><button>Atras</button></a>
					</td>
				</tr>
			</table>
		</div>
	</body>
</html>