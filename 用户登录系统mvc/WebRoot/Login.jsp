<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Login.jsp</title>
    
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
    <h1>�û���¼ϵͳ</h1>
	<hr>
	<form name="f" action="LoginCIServlet" method="post">
	<table align="center"  >
	<tr>
	<td height="41">�û���:</td>
	<td><input type="text" name="username" /></td>
	</tr>
	<tr>
	<td height="32">��&nbsp;��:</td>
	<td><input type="password" name="pw" /></td>
	</tr>
	<tr>
	<td colspan="2" align="center" height="32">
	<input type="submit" value="��¼"/>&nbsp;&nbsp;<input type="reset" />
	</td>
	</tr>
	</table>
	</form>
  </body>
</html>
