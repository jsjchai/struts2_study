<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>首页</title>
	<link rel="stylesheet" type="text/css" href="images/style.css">
  </head>
  
  <body>
    <div>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tbody>
    <tr>
      <td><img src="images/header-stretch.gif" alt="" border="0" height="57" width="100%" /></td>
      <td width="1%"><img src="images/header-right.gif" alt="" border="0" /></td>
    </tr>
  </tbody>
</table>
</div>
<div>
<br />
<p class="title">论坛:Java语言交流区</p>
</div>
<br />
<a href="??">发表新帖</a>
<hr />
<div>
<table width="100%" cellspacing="0" >
     <tr id="frist"  >
  	  <td width="12%">回复</td><td width="58%">主题</td><td width="13%">作者</td><td width="17%">时间</td>
     </tr> 
    <tr >
      <td height="40" align="center">1222</td>
      <td ><li><a href="??">新人？？？？？？</a></li></td>
      <td align="center">chai</td>
      <td align="center">2014-10-19 11:45</td>
    </tr>
    <tr >
      <td height="40" align="center">1222</td>
      <td ><li><a href="??" target="_blank">新人？？？？？？</a></li></td>
      <td align="center">chai</td>
      <td align="center">2014-10-19 11:45</td>
    </tr>
  </table>
  <hr />
</div>
  </body>
</html>
