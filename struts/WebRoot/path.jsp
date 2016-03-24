<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<base href="<%=basePath%>">

<title>path</title>

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
	struts2中的路径问题是根据action的路径而不是jsp路径来确定，所以尽量不要使用相对路径。
	<br />
	<a href="index.jsp">index.jsp</a>
	<br /> 虽然可以用redirect方式解决，但redirect方式并非必要。
	<br /> 解决办法非常简单，统一使用绝对路径。（在jsp中用request.getContextRoot方式来拿到webapp的路径）
	<br /> 或者使用myeclipse经常用的，指定basePath
</body>
</html>
