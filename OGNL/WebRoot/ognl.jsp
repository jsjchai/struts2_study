<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ornl.jsp' starting page</title>
    
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
    <ol>
		<li>����ֵջ�е�action����ͨ����: username = <s:property value="username" /> </li>
		<li>����ֵջ�е�action����ͨ����: password = <s:property value="password" /> </li>
		<li>����ֵջ�ж������ͨ����(get set����)��<s:property value="user.age"/> | <s:property value="user['age']"/> | 
		<s:property value="user[\"age\"]"/> |<%-- wrong: <s:property value="user[age]"/>--%></li> 
		<li>����ֵջ�ж������ͨ����(get set����): <s:property value="cat.friend.name"/></li>
		<li>����ֵջ�ж������ͨ������<s:property value="password.length()"/>
		<li>����ֵջ�ж������ͨ������<s:property value="cat.miaomiao()"/>
		<li>����ֵջ��action����ͨ������<s:property value="m()" /></li>
		<li>���ʾ�̬����:<s:property  value="@action.TestStatic@S()"/></li>
		<li>���ʾ�̬���ԣ�<s:property value="@action.TestStatic@num"/></li>
		<li>����Math��ľ�̬������<s:property value="@@max(2,3)" /></li> 
		<li>������ͨ��Ĺ��췽����<s:property value="new action.User(8)"/></li>
		<li>����List:<s:property value="u"/></li>
		<li>����List��ĳ��Ԫ��:<s:property value="u[1]"/></li>
		<li>����List��Ԫ��ĳ�����Եļ���:<s:property value="u.{age}"/></li>
		<li>����List��Ԫ��ĳ�����Եļ����е��ض�ֵ:<s:property value="u.{age}[0]"/> | <s:property value="u[0].age"/></li>
		<li>����Set:<s:property value="ds"/></li>
		<li>����Set��ĳ��Ԫ��:<s:property value="ds[1]"/>--���ܷ���</li>
		<li>����Map:<s:property value="dm"/></li>
		<li>����Map��ĳ��Ԫ��:<s:property value="dm.dog5"/> | <s:property value="dm['dog5']"/> | <s:property value="dm[\"dog5\"]"/></li>
		<li>����Map�����е�key:<s:property value="dm.keys"/></li>
		<li>����Map�����е�value:<s:property value="dm.values"/></li>
		<li>���������Ĵ�С��<s:property value="dm.size()"/> | <s:property value="u.size"/> |<s:property value="ds.size"/></li>
		<li>ͶӰ(����)��<s:property value="u.{?#this.age==10}.{age}"/></li>
		<li>ͶӰ��<s:property value="u.{?#this.age==10}"/></li>
		<li>ͶӰ��<s:property value="u.{?#this.age==10}[0]"/></li>
		<li>ͶӰ��<s:property value="u.{^#this.age>10}.{age}"/></li>
		<li>ͶӰ��<s:property value="u.{$#this.age>10}.{age}"/></li>
		<li>ͶӰ��<s:property value="u.{$#this.age>20}.{age} != null"/></li>
		<li>[](0~):<s:property value="[0]"/></li>
		<li>[](1~):<s:property value="[1]"/></li>
		<li>[](0~):<s:property value="[0].username"/></li>
		<li>[](1~):<s:property value="[1].username"/></li>
	</ol>
	
	<s:debug></s:debug>
  </body>
</html>
