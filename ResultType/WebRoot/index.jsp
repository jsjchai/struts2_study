<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
    <h1>Result����</h1>
<ol>
	<li><a href="r/r1">dispatcher</a></li>
	<li><a href="r/r2">redirect</a></li>
	<li><a href="r/r3">chain1</a></li>
	<li><a href="r/r4">redirectAction1</a></li>
	<li><a href="r/r5">chain2</a></li>
	<li><a href="r/r6">redirectAction2</a></li>
	<li>freemarker</li>
	<li>httpheader</li>
	<li>stream</li>
	<li>velocity</li>
	<li>xslt</li>
	<li>plaintext</li>
	<li>tiles</li>
</ol>
  </body>
</html>
