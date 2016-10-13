<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" %>
<!-- 导入Struts 标签库 -->
<%@ taglib prefix="s" uri="/struts-tags" %>

<%@page import="database.SearchAccordingToAuthor,po.book"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>书目</title>
    
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
  
    <%String name=request.getParameter("name");%>
	
    <%
    SearchAccordingToAuthor sa=new SearchAccordingToAuthor();
    List<book> list=sa.getBook(name);
    for(book bk:list)
     {%>
     <tr>
     <a href="BookInformation.jsp?isbn=<%=bk.getIsbn() %>"><%=bk.getTitle() %></a>
     <a href="DeleteBook.action?isbn=<%=bk.getIsbn() %>&name=<%=name %>">delete</a><br>
     <%} %>
   <a href="index.jsp">main</a><br>
  </body>
</html>
