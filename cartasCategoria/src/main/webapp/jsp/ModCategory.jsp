<%@page import="com.jacaranda.CategoryControl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="../css/Main.css" type="text/css">
	<link rel="shortcut icon" href="../images/icon.png">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="i" class="com.jacaranda.Category"/>

<%
	int idCategory=Integer.parseInt(request.getParameter("key"));
	
	CategoryControl c =new CategoryControl();
	i.setCodeCategory(idCategory);
	
	%>
	<div align="center">
	<form action="ConfirmModCategory.jsp" id="add">
	<table>
	<tr>
			<td>
				Categor�a a modificar
			</td>
			<td>
				
				
				<%=c.getCategory(idCategory).getNameCategory()%>
				
			</td>
			
		<tr>
		
			<td>
				Nombre categor�a :
			</td>
			<td>
				<input name="nameC" type="text">
			</td>
			<td>
				<a href="ConfirmModCategory.jsp?key=<%=i.getCodeCategory()%>" ><button >Modificar categor�a</button></a>
			</td>
			</form>
				
			
			
		</tr>
	</table>
	
	<a href="Main.jsp"><button>Atras</button></a>
	</div>
	
</body>
</html>