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
    
    <title>My JSP 'error.jsp' starting page</title>
    
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
   User Add Error! <br>
   <s:fielderror fieldName="name" theme="simple"></s:fielderror>
   Map:<s:property value="errors"/><br>
   Map-value:<s:property value="errors.name"/><br>
   Map-ValueÊý×é:<s:property value="errors.name[0]"/><br>
   <s:property value="errors.name[1]"/><br>
   <s:debug></s:debug>
  </body>
</html>
