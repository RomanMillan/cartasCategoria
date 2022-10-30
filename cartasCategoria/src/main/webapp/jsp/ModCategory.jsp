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
	
	
	category.setCodeCategory(idCategory);
	
	%>
	<div align="center">
		<form action="ConfirmModCategory.jsp" id="add">
	<table>
	<tr>
		
			<td>
				Categoría a modificar
			</td>
			<td>
				
				
				<%=CategoryControl.getCategory(idCategory).getNameCategory()%>
				
			</td>
			
		<tr>
		
			<td>
				Nombre categoría :
			</td>
			<td>
				<input required name="nameC" type="text">
				<input type="hidden" name="idCategory" value="<%=category.getCodeCategory()%>">
			</td>
			<td>
				 <button >Modificar categoría</button>
			</td>
			

		</tr>
	</table>
	</form>
	
	</div>
	
	
	<div align="center">
		<a href="Main.jsp"><button>Atras</button></a>
	</div>
	
</body>
</html>