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
			<%int idCategory = Integer.parseInt(request.getParameter("key")); %>
			<form action="AddCard.jsp?key=<%= idCategory%>">
				<table>
					<tr>
						<td>
							Nombre Carta
						</td>
						<td>
							<input name="nameCard" type="text">
						</td>
					</tr>
					<tr>
						<td>
							Precio
						</td>
						<td>
							<input name="price" type="number">
						</td>
					</tr>
					<tr>
						<td>
							Fecha
						</td>
						<td>
							<input name="date" type="date">
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
					
					<tr>
						<td colspan="2">
							<a><button>Crear Carta</button></a>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>