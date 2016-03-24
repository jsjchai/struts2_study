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
    String srootid=request.getParameter("rootid");
    int rootid=0;
	if(srootid!=null){
		rootid=Integer.parseInt(srootid);
	}
	if(rootid!=0){
		ForumCI fc=new ForumCI();
		fc.del(rootid);
	}
  %>
<p>删除成功<span style=color:red; id="time">3</span>秒后直接跳转，如不能跳转请点击下面链接</p><br>
<%--跳转代码 --%>
<script type="text/javascript">
	function delayURL(url){
		var obj=document.getElementById("time");
		var time=obj.textContent;
		if(time>0){
			time--;
			obj.textContent=time;
		}
		else
			window.top.location=url;
		    setTimeout("delayURL('"+url+"')",1000);
	}
</script>
<script type="text/javascript">
	delayURL("forum.jsp");
</script>
<a href="forum.jsp">首页</a>
</body>
</html>
