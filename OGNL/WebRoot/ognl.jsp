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
		<li>访问值栈中的action的普通属性: username = <s:property value="username" /> </li>
		<li>访问值栈中的action的普通属性: password = <s:property value="password" /> </li>
		<li>访问值栈中对象的普通属性(get set方法)：<s:property value="user.age"/> | <s:property value="user['age']"/> | 
		<s:property value="user[\"age\"]"/> |<%-- wrong: <s:property value="user[age]"/>--%></li> 
		<li>访问值栈中对象的普通属性(get set方法): <s:property value="cat.friend.name"/></li>
		<li>访问值栈中对象的普通方法：<s:property value="password.length()"/>
		<li>访问值栈中对象的普通方法：<s:property value="cat.miaomiao()"/>
		<li>访问值栈中action的普通方法：<s:property value="m()" /></li>
		<li>访问静态方法:<s:property  value="@action.TestStatic@S()"/></li>
		<li>访问静态属性：<s:property value="@action.TestStatic@num"/></li>
		<li>访问Math类的静态方法：<s:property value="@@max(2,3)" /></li> 
		<li>访问普通类的构造方法：<s:property value="new action.User(8)"/></li>
		<li>访问List:<s:property value="u"/></li>
		<li>访问List中某个元素:<s:property value="u[1]"/></li>
		<li>访问List中元素某个属性的集合:<s:property value="u.{age}"/></li>
		<li>访问List中元素某个属性的集合中的特定值:<s:property value="u.{age}[0]"/> | <s:property value="u[0].age"/></li>
		<li>访问Set:<s:property value="ds"/></li>
		<li>访问Set中某个元素:<s:property value="ds[1]"/>--不能访问</li>
		<li>访问Map:<s:property value="dm"/></li>
		<li>访问Map中某个元素:<s:property value="dm.dog5"/> | <s:property value="dm['dog5']"/> | <s:property value="dm[\"dog5\"]"/></li>
		<li>访问Map中所有的key:<s:property value="dm.keys"/></li>
		<li>访问Map中所有的value:<s:property value="dm.values"/></li>
		<li>访问容器的大小：<s:property value="dm.size()"/> | <s:property value="u.size"/> |<s:property value="ds.size"/></li>
		<li>投影(过滤)：<s:property value="u.{?#this.age==10}.{age}"/></li>
		<li>投影：<s:property value="u.{?#this.age==10}"/></li>
		<li>投影：<s:property value="u.{?#this.age==10}[0]"/></li>
		<li>投影：<s:property value="u.{^#this.age>10}.{age}"/></li>
		<li>投影：<s:property value="u.{$#this.age>10}.{age}"/></li>
		<li>投影：<s:property value="u.{$#this.age>20}.{age} != null"/></li>
		<li>[](0~):<s:property value="[0]"/></li>
		<li>[](1~):<s:property value="[1]"/></li>
		<li>[](0~):<s:property value="[0].username"/></li>
		<li>[](1~):<s:property value="[1].username"/></li>
	</ol>
	
	<s:debug></s:debug>
  </body>
</html>
