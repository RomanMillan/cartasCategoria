<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.jacaranda.User"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Cartas Gwent</title>
		<link rel="stylesheet" href="../css/Main.css" type="text/css">
		<link rel="shortcut icon" href="../images/icon.png">
	</head>
	<body>
		<%
			
			//cogemos los datos que ha insertado el usuario
			String user = request.getParameter("user");
			String password = request.getParameter("password");
			
			
			//comprobamos que esos datos son correctos
			User user1 = new User(password,user);
				
			if(user1.passwordConfirmation()==true){ // TODO: falta hacer un metodo para comprobar si el usuario est� logeado
				
				
				 HttpSession sesion = request.getSession();
				sesion.setAttribute("login","true");
				sesion.setAttribute("user",user);
		%>
		<% 
			}else{
		%>
				 <jsp:forward page="Wrong.jsp?msg='No est�s logeado'"></jsp:forward>
		<%
			}
		%>
	</body>
</html>