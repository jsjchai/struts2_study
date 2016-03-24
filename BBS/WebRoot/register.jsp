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
    
    <title>Login</title>
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
<br />
<h2>用户注册</h2>
<hr />
<form name="f" action="registerCI.jsp" method="post" onSubmit="return test()">
<table align="center"  >
<tr>
<td height="41">用&nbsp;户&nbsp;名:</td>
<td><input type="text" name="username" /></td>
</tr>
<tr>
<td height="32">密&nbsp;&nbsp;&nbsp;&nbsp;码:</td>
<td><input type="password" name="pw" /></td>
</tr>
<tr>
<td height="32">确认密码:</td>
<td><input type="password" name="repw" /></td>
</tr>
<tr>
<td colspan="2" align="center" height="32">
<input type="submit" value="注册"/>&nbsp;&nbsp;<input type="reset" />
</td>
</tr>
</table>
<script type="text/javascript">
	var obj=document.f;
	function test(){
		if(obj.username.value==null||obj.username.value==""){
			alert("用户名为空!");
			return false;
		}
		if(obj.pw.value==null||obj.pw.value==""){
			alert("密码为空!");
			return false;
		}
		if(obj.repw.value==null||obj.repw.value==""){
			alert("确认密码为空!");
			return false;
		}	
		if(obj.pw.value!=obj.repw.value){
			alert("密码不一致!");
			return false;
		}
		return true;
	}
</script>
</form>
  </body>
</html>
