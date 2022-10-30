<%@page import="com.jacaranda.CategoryControl"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/Main.css" type="text/css">
	<link rel="shortcut icon" href="../images/icon.png">
</head>

<body>
<jsp:useBean id="category" class="com.jacaranda.Category"/>
	<%
	int idCategory=Integer.parseInt(request.getParameter("key"));
	
	category.setCodeCategory(idCategory);
	
	%>
	
	<div align="center" id="category">
	<table>
		<tr>
			<td>
				Estas seguro de borrar la categoría
			</td>
			<td>
				
				
				<%=CategoryControl.getCategory(idCategory).getNameCategory()%>
				
			</td>
			
			<td>
				<a href="ConfirmDeleteCategory.jsp?key=<%=category.getCodeCategory()%>"><button >Si</button></a>
			</td>
			
			<td>
				<a href="Main.jsp"><button>No</button></a>
			</td>
			
		</tr>
	</table>
	</div>
</body>
</html>