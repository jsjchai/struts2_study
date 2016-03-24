<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>index</title>
  </head>
  
  <body>
    使用通配符，将配置量降到最低<br />
<a href="<%=basePath %>actions/Studentadd">添加学生</a>
<a href="<%=basePath %>actions/Studentdel">删除学生</a>
<br />
不过，一定要遵守"约定优于配置"的原则
<br />
<a href="<%=basePath %>actions/Teacher_add">添加老师</a>
<a href="<%=basePath %>actions/Teacher_del">删除老师</a>
  </body>
</html>
