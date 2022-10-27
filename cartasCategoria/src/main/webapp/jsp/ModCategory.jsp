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
<script >
	function goBack() {
		 window.history.go(-1);
	}
</script>
<jsp:useBean id="category" class="com.jacaranda.Category"/>

<%
	int idCategory=Integer.parseInt(request.getParameter("key"));
	
	CategoryControl c =new CategoryControl();
	category.setCodeCategory(idCategory);
	
	%>
	<div align="center">
	<form action="ConfirmModCategory.jsp?key=<%=category.getCodeCategory()%>" id="add">
	<table>
	<tr>
			<td>
				Categoría a modificar
			</td>
			<td>
				
				
				<%=c.getCategory(idCategory).getNameCategory()%>
				
			</td>
			
		<tr>
		
			<td>
				Nombre categoría :
			</td>
			<td>
				<input name="nameC" type="text">
			</td>
			<td>
				<a href="ConfirmModCategory.jsp?key=<%=category.getCodeCategory()%>" ><button >Modificar categoría</button></a>
			</td>
			</form>
				
			
			
		</tr>
	</table>
	
	<!--<button onclick="goBack()">Atras</button>  -->
	</div>
	
</body>
</html>