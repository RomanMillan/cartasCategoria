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
	<%
	int idCategory=Integer.parseInt(request.getParameter("key"));
	CategoryControl c =new CategoryControl();
	%>
	<div align="center" id="category">
	<table>
		<tr>
			<td>
				Estas seguro de borrar la categoría
			</td>
			<td>
				
				
				<%=c.getCategory(idCategory).getNameCategory()%>
				
			</td>
			
			<td>
				<a href="ConfirmDeleteCategory"><button >Si</button></a>
			</td>
			
			<td>
				<a href="Main.jsp"><button>No</button></a>
			</td>
			
		</tr>
	</table>
	</div>
</body>
</html>