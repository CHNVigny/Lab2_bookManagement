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
    
    <title>AllBooks</title>
    
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
    <table border="1">
		
		<tr>
			
			<td>isbn</td>
			<td>title</td> 
			<td>publisher</td> 
			<td>publishdate</td>
			<td>price</td>
			<td>author</td>
			<td>age</td>
			<td>country</td>
			
			 
		</tr>

		<%
			AllBooks bk = new AllBooks();
			List<book> list = bk.getBooks();
			for (book tl : list) {
		%>

		<tr>
			
			<td><%=tl.getIsbn() %></td> 
			<td><a href="BookInformation.jsp?isbn=<%=tl.getIsbn() %>"><%=tl.getTitle() %></a></td>
			<td><%=tl.getPublisher() %></td>
			<td><%=tl.getPublishdate() %></td>
			<td><%=tl.getPrice() %></td>
			<td><%=tl.getAuthor() %></td>
			<td><%=tl.getAuthorAge() %></td>
			<td><%=tl.getAuthorCountry() %></td>
			<td><a href="updateBook_setIsbn.action?isbn=<%=tl.getIsbn() %>">update</a></td>
			<td><a href="DeleteBook.action?isbn=<%=tl.getIsbn() %>&name=<%=tl.getAuthor() %>">delete</a></td>
		</tr>
		
		<%}
        %>
		
	</table><br>
	
	<a href="index.jsp">main</a>
  </body>
</html>
