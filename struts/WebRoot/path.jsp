<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<base href="<%=basePath%>">

<title>path</title>

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
	struts2�е�·�������Ǹ���action��·��������jsp·����ȷ�������Ծ�����Ҫʹ�����·����
	<br />
	<a href="index.jsp">index.jsp</a>
	<br /> ��Ȼ������redirect��ʽ�������redirect��ʽ���Ǳ�Ҫ��
	<br /> ����취�ǳ��򵥣�ͳһʹ�þ���·��������jsp����request.getContextRoot��ʽ���õ�webapp��·����
	<br /> ����ʹ��myeclipse�����õģ�ָ��basePath
</body>
</html>
