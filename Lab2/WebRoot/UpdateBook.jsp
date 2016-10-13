<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@page import="database.BookInformation,po.book,po.author,java.util.*"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Update</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <!-- String isbn,int authorid, String publisher, String publishdate, String price -->
  <body>
  	
    <form action="updateBook.action"> 
	<table border="1">
		
		<tr>
			
			
			<td>title</td> 
			<td>publisher</td> 
			<td>publishdate</td> 
			<td>price</td> 
			<td>author</td> 
			<td>author age</td> 
			<td>author country</td> 
		</tr>
		<%
			String isbn=request.getParameter("isbn");
			BookInformation bi = new BookInformation();
			book tl = new book();
			tl=bi.bookInformation(isbn); 
		%>
		<tr>
			
			 
			<td><%=tl.getTitle() %></td> 
			<td><input type=text name="publisher" value="<%=tl.getPublisher() %>"></td> 
			<td><input type=text name="publishdate" value="<%=tl.getPublishdate() %>"></td> 
			<td><input type=text name="price" value="<%=tl.getPrice() %>"></td> 
			<td><input type=text name="name" value="<%=tl.getAuthor() %>"></td> 
			<td><input type=text name="age" value="<%=tl.getAuthorAge() %>"></td> 
			<td><input type=text name="country" value="<%=tl.getAuthorCountry() %>"></td>
			<td><input type=hidden name="title" value="<%=tl.getTitle() %>"></td> 
			<td><input type=hidden name="isbn" value="<%=tl.getIsbn() %>"></td>
			<td><input type=submit value="submit">
			
		</tr>
		
		
	</table>
	</form>
  </body>
</html>
