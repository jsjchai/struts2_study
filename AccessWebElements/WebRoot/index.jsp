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
    取得Map类型request,session,application,真实类型 HttpServletRequest, HttpSession, ServletContext的引用:
<ol>
	<li>前三者：依赖于容器</li>
	<li>前三者：IOC(只用这种)</li> 
	<li>后三者：依赖于容器</li>
	<li>后三者：IOC</li>
</ol>
<br />
<form name="f" action="" method="post">
用户名：<input type="text" name="name"/>
密码：<input type="text" name="password"/>
<br />
<input type="button" value="submit1" onclick="javascript:document.f.action='login/login1';document.f.submit();" />
<input type="button" value="submit2" onclick="javascript:document.f.action='login/login2';document.f.submit();" />
<input type="button" value="submit3" onclick="javascript:document.f.action='login/login3';document.f.submit();" />
<input type="button" value="submit4" onclick="javascript:document.f.action='login/login4';document.f.submit();" />
</form>
  </body>
</html>
