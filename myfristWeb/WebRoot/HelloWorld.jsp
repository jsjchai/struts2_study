<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();//Tomcat->webapps/myfristWeb
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
//http://localhost:8080/myfristWeb/HelloWorld.jsp
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <%--³¬Á´½ÓÄ¬ÈÏÇ°×º:http://localhost:8080/myfristWeb/ --%>
    <title>My JSP 'HelloWorld.jsp' starting page</title>
    
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
    <%out.print("hello,world"); %>
  </body>
</html>
