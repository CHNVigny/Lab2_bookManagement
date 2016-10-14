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
    <link rel="stylesheet" href="../css/responsive-nav.css">
	<script src="../js/responsive-nav.js"></script>
    <title>Welcome to my library!</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
  </head>
  <script>
  var navigation = responsiveNav("#nav",{ // Selector: The ID of the wrapper
  animate: true, // Boolean: 是否启动CSS过渡效果（transitions）， true 或 false
  transition: 400, // Integer: 过渡效果的执行速度，以毫秒（millisecond）为单位
  label: "Menu", // String: Label for the navigation toggle
  insert: "after", // String: Insert the toggle before or after the navigation
  customToggle: "", // Selector: Specify the ID of a custom toggle
  openPos: "relative", // String: Position of the opened nav, relative or static
  jsClass: "js", // String: 'JS enabled' class which is added to <html> el
  debug: false, // Boolean: Log debug messages to console, true 或 false
  init: function(){}, // Function: Init callback
  open: function(){}, // Function: Open callback
  close: function(){} // Function: Close callback
});
</script>
  <body>
  	<div role="navigation" id="nav" class="closed" aria-hidden="false" style="transition: max-height 400ms; position: relative;">
  <ul>
    <li><a href="welcome.jsp">首页</a></li>
    <li><a href="Search.jsp">根据作者查询</a></li>
    <li><a href="Allbooks.jsp">查看所有书籍</a></li>
    <li><a href="AddBook.jsp">添加书籍</a></li>
  </ul>
</div>
<!--  
	<form action="Search.jsp">

		<input type=submit value="根据作者查询"> 

	</form>
	<form method=get action=Allbooks.jsp>


		<input type=submit value=查看所有书籍>

	</form>
	<form method=get action=AddBook.jsp>


		<input type=submit value=添加书籍>

	</form>
-->
</body>
</html>

