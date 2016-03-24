<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="bbs.*,java.sql.*" %>
<%@ include file="_SessionCheck.jsp" %>
<% request.setCharacterEncoding("gb2312"); %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>post</title>
   <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<link rel="stylesheet" type="text/css" href="images/style.css">
  </head>
  <body>
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tbody>
    <tr>
      <td><img src="images/header-stretch.gif" alt="" border="0" height="57" width="100%" /></td>
      <td width="1%"><img src="images/header-right.gif" alt="" border="0" /></td>
    </tr>
  </tbody>
</table>
<div>
<br />
<p class="title">论坛:Java语言交流区</p>
</div>
<hr>
<div>
 <p>发表新帖</p>
<center>
	<form action="newpostDeal.jsp"  method="post">
	   <input type="text" name="title" size="100" /><br><br>
	   <textarea rows="15" cols="90" name="cont"></textarea><br><br>
	   <input type="submit" value="提交"> 
    </form>
</center>
</div>
</body>
</html>
