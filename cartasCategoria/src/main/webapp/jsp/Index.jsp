<%@page import="com.jacaranda.ConnectionDAO"%>
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
	<jsp:useBean id="master" class="com.jacaranda.User"/>
		<%
			
			//cogemos los datos que ha insertado el usuario
			String user = request.getParameter("user");
			String password = request.getParameter("password");
			master.setPassword(password);
			master.setName(user);
			
			
			//comprobamos que esos datos son correctos
			
			ConnectionDAO s = new ConnectionDAO();
			
			
			if(s.validUser(master.getPassword())== true){ 
				HttpSession sesion = request.getSession();
				sesion.setAttribute("login","true");
				sesion.setAttribute("user",user);
		%>
		 	<jsp:forward page="Main.jsp"></jsp:forward>
		<% 
			}else{
		%>
				 <jsp:forward page="Wrong.jsp?msg='No estás logeado'"></jsp:forward>
		<%
			}
		%>
	</body>
</html>