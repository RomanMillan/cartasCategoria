<%@page import="java.util.List"%>
<%@page import="com.jacaranda.CategoryControl"%>
<%@page import="com.mysql.cj.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.jacaranda.Category"%>
<%@page import="com.jacaranda.ConnectionDAO"%>
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
	
	<div align="center" >
		<table >
			<tr>
				<td>
					Cerrar sesión
				</td>
				<td>
					<a href="../html/Index.html"><img width=100px src="../images/closeSession.png" ></a>
				</td>
			</tr>
		</table>
	
	</div>
		<div align="center">
			<table>
			<%
			
			List<Category> category = CategoryControl.getCategoryC();
			StringBuilder text = new StringBuilder();
			text.append("<tr><td colspan='3'>Añadar categoría </td></tr>");
			text.append("<tr><td colspan='3'><a href='../html/AddCategory.html'><img width=100px id=delete src=../images/add.png ></a></td></tr>");
			text.append("<tr><td>Categoría</td><td>Editar</td><td>Eliminar</td></td>");
			for(Category i: category){
				text.append("<tr><td> <a href='ShowCards.jsp?key="+i.getCodeCategory()+"'</a>"+ i.getNameCategory()+"</td>");

				text.append("<td><a href='ModCategory.jsp?key="+i.getCodeCategory()+"'><img width=50px id=delete src=../images/mod.png ></a></td>");
				text.append("<td><a href='DeleteCategory.jsp?key="+i.getCodeCategory()+"'><img width=50px id=delete src=../images/dele.png ></a></td>");
				
				text.append("</tr>");
				
			}
			
			%>
			<%=text.toString()%>
		</table>
	</div>
	
	
	</body>
</html>
