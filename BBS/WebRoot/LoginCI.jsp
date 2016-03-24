<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="bbs.*" %>
<% request.setCharacterEncoding("gb2312"); %>
<%
	String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>LoginCI</title>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<link rel="stylesheet" type="text/css" href="images/style.css">
  </head>
  <body>
  <%
  	 String u=request.getParameter("username");
   	 String p=request.getParameter("pw");
   	 ForumCI fc=new ForumCI();
   	 if(fc.check(u, p)){
   	 	session.setAttribute("uname",u);
   	 	request.getRequestDispatcher("forum.jsp").forward(request, response);
   	 }
   	 else{
   	    request.getRequestDispatcher("Login.jsp").forward(request, response);
   	 }
     %>
  </body>
</html>
