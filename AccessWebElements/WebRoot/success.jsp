<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'success.jsp' starting page</title>
    
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
    User Login Success!
	<br />
	<s:property value="#request.RequestName"/> | <%=request.getAttribute("RequestName") %> <br>
	<s:property value="#session.SessionName"/> | <%=session.getAttribute("SessionName") %> <br>
	<s:property value="#application.ApplicationName"/> | <%=application.getAttribute("ApplicationName") %> <br> 
	<p> attr </p>
	<s:property value="#attr.RequestName"/><br />
	<s:property value="#attr.SessionName"/><br />
	<s:property value="#attr.ApplicationName"/><br />
	<br />
	<s:debug></s:debug>
  </body>
</html>
