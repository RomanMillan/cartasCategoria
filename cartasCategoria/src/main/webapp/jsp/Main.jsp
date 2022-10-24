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
</head>
	<body>
	
		<table border="11">
		<%
		
		CategoryControl c = new CategoryControl();
		List<Category> category = CategoryControl.getCategoryC();
		StringBuilder text = new StringBuilder();
		for(Category i: category){
			text.append("<tr><td> <a href='Card.jsp?key="+i.getCodeCategory()+"'</a>"+ i.getNameCategory()+"</td></tr>");
		}
		
		%>
		<%=text.toString()%>
	</table>
	</body>
</html>