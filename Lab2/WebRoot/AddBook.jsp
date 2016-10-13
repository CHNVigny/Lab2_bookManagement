<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@page import="database.AllBooks,po.book,po.author,java.util.*"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Add</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <form action="addBook.action" accept-charset="UTF-8"> 
	<table border="1">
		
		<tr>
			
			<td>isbn</td> 
			<td>title</td> 
			<td>publisher</td> 
			<td>publishdate</td> 
			<td>price</td> 
			<td>author</td> 
			<td>author age</td> 
			<td>author country</td> 
		</tr>
		
			<tr>
			
			<td><input type=text name="isbn"></td> 
			<td><input type=text name="title"></td> 
			<td><input type=text name="publisher"></td> 
			<td><input type=text name="publishdate"></td> 
			<td><input type=text name="price"></td> 
			<td><input type=text name="name"></td> 
			<td><input type=text name="age"></td> 
			<td><input type=text name="country"></td> 
			<td><input type=submit value="submit">
			
		</tr>
		
		
	</table>
	</form> 
	<a href="javascript:history.go(-1);">return</a>&nbsp;<a href="index.jsp">main</a>
</body>
</html>
