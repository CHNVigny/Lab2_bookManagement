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
	
	
  <link href="../css/button.css" rel="stylesheet" type="text/css">
  </head>
  
  <body>
  	<div align="center">
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
  	  <table id="table-2">
  	    
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
  	      <td><a style="text-decoration:none" href="BookInformation.jsp?isbn=<%=tl.getIsbn() %>"><%=tl.getTitle() %></a></td>
  	      <td><%=tl.getPublisher() %></td>
  	      <td><%=tl.getPublishdate() %></td>
  	      <td><%=tl.getPrice() %></td>
  	      <td><%=tl.getAuthor() %></td>
  	      <td><%=tl.getAuthorAge() %></td>
  	      <td><%=tl.getAuthorCountry() %></td>
  	      <td><a style="text-decoration:none" href="updateBook_setIsbn.action?isbn=<%=tl.getIsbn() %>">update</a></td>
  	      <td><a style="text-decoration:none" href="DeleteBook.action?isbn=<%=tl.getIsbn() %>&name=<%=tl.getAuthor() %>">delete</a></td>
  	      </tr>
  	    
  	    <%}
        %>
  	    
  	    </table><br>
  	  
  	  <a href="index.jsp" class="button button-glow button-border button-rounded button-primary">返回主页</a></div>
  </body>
</html>
