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
    ʹ��ͨ��������������������<br />
<a href="<%=basePath %>actions/Studentadd">���ѧ��</a>
<a href="<%=basePath %>actions/Studentdel">ɾ��ѧ��</a>
<br />
������һ��Ҫ����"Լ����������"��ԭ��
<br />
<a href="<%=basePath %>actions/Teacher_add">�����ʦ</a>
<a href="<%=basePath %>actions/Teacher_del">ɾ����ʦ</a>
  </body>
</html>
