<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="bbs.*,java.sql.*" %>
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
<%
    String cont=request.getParameter("cont");
    String rid=request.getParameter("rootid");
    String name=(String)session.getAttribute("uname");
    int rootid=0;
	if(rid!=null){
		rootid=Integer.parseInt(rid);
	}
    if(name==null){
		//out.print("你尚未登录!");
		//return;
%>
<script type="text/javascript">window.confirm("你尚未登录!");history.back();</script>
<% 
	//response.sendRedirect("forumpost.jsp?id="+rootid);
	return;
    }
	ForumCI fc=new ForumCI();
	fc.replyCI(rootid,name, null, cont);
  %>
 <script type="text/javascript">window.confirm("发帖成功!");history.back();</script>
</body>
</html>
