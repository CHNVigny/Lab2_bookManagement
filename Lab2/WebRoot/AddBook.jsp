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
  <style type="text/css">
/* Border styles */
#table-2 thead, #table-2 tr {
border-top-width: 1px;
border-top-style: solid;
border-top-color: rgb(230, 189, 189);
}
#table-2 {
border-bottom-width: 1px;
border-bottom-style: solid;
border-bottom-color: rgb(230, 189, 189);
}

/* Padding and font style */
#table-2 td, #table-2 th {
padding: 5px 10px;
font-size: 12px;
font-family: Verdana;
color: rgb(177, 106, 104);
}

/* Alternating background colors */
#table-2 tr:nth-child(even) {
background: rgb(238, 211, 210)
}
#table-2 tr:nth-child(odd) {
background: #FFF
}
</style>
  <form action="addBook.action" accept-charset="UTF-8"> 
	<table id="table-2" align="center">
		
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
	<a style="text-decoration:none" href="javascript:history.go(-1);">return</a>&nbsp;<a style="text-decoration:none" href="index.jsp">main</a>
</body>
</html>
