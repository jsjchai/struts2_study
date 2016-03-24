<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Category_input.jsp' starting page</title>
    
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
	<h1>list</h1>
	<a href="admin/Category_addInput">添加帖子</a>
	<hr>
	<s:iterator var="ca"  value="categories">
		<s:property value="#ca.name"/>|
		<s:property value="#ca.description"/>
		<a href="admin/Category_delete?id=<s:property value="#ca.id"/>">删除帖子</a>
		<a href="admin/Category_updateInput?id=<s:property value="#ca.id"/>">更新帖子</a><br>
	</s:iterator>
	<s:debug></s:debug>
</body>
</html>
