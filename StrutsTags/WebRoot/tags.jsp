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
    
    <title>Struts_tags</title>
    
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
		<li>property: <s:property value="username"/> </li>
		<li>property 取值为字符串: <s:property value="'username'"/> </li>
		<li>property 设定默认值: <s:property value="admin" default="管理员"/> </li>
		<!-- escape=flase 解析为html标贴 -->
		<li>property 设定HTML: <s:property value="'<hr>'" escape="true"/></li>
		
		<li>set 设定adminName值（默认为request 和 ActionContext）: <s:set var="adminName" value="username" /></li>
		
		<li>set 从request取值: <s:property value="#request.adminName" /></li>
		<li>set 从ActionContext取值: <s:property value="#adminName" /></li>
		
		<li>set 设定范围: <s:set name="adminPassword" value="password" scope="page"/></li>
		<li>set 从相应范围取值: <%=pageContext.getAttribute("adminPassword") %></li>

		<li>set 设定var，范围为ActionContext: <s:set var="adminPassword" value="password" scope="ActionContext"/></li>
		<!-- scope="session"无法用此方法取值-->
		<li>set 使用#取值: <s:property value="#adminPassword"/> </li>
		
		<li>set 从相应范围取值: <s:property value="#session.adminPassword"/> </li>
		
		<%--<li>push:<s:set name="myDog" value="action.Dog('oudy')"></s:set></li>
		<li>
		push:<s:push value="#myDog">
			<s:property value="name"/>
		</s:push>
		</li>
		<li>push: <s:property value="name"/></li>
		--%>
		
		<li>bean 定义bean,并使用param来设定新的属性值:
			<s:bean name="action.Dog" >
			<!-- dog类里面的name设值 -->
				<s:param name="name" value="'dd1'"></s:param>
				<s:property value="name"/>		
			</s:bean>
		</li>
		
		<!-- var--actioncontext -->
		<li>bean 查看debug情况:<br>
			<s:bean name="action.Dog" var="d">
				<s:param name="name" value="'dd2'"></s:param>
			</s:bean>
			拿出值(结束s:bean)：
			<s:property value="#d.name"/>
		</li>
		
		<li>include： include1.html 包含静态英文文件
		<s:include value="/include1.html"></s:include>
		</li>
		
		<li>include include2.html 包含静态中文文件
		<s:include value="/include2.html"></s:include>
		</li>
		
		<li>include include1.html 包含静态英文文件，说明%用法
		<s:set var="incPage" value="'/include1.html'" />
		<s:include value="%{#incPage}"></s:include>
		</li>
		
		
		<li>if elseif else: 
		<!--parameters--Stack Context url传进来的参数  -->
		age= <s:property value="#parameters.age" /> <br>
		age = <s:property value="#parameters.age[0]" /> <br>
		<s:set var="age" value="#parameters.age[0]" />
		<s:if test="#age < 0">wrong age!</s:if>
		<s:elseif test="#parameters.age[0] < 20">too young!</s:elseif>
		<s:else>yeah!</s:else><br />
		<s:debug></s:debug>
		<s:if test="#parameters.aaa == null">null</s:if>
		</li>
		 
		 
		 <li>遍历集合：<br />
		<s:iterator value="{1, 2, 3}" >
			<s:property/> |
		</s:iterator>
		</li>
		<li>自定义变量：<br />
		<s:iterator value="{'aaa', 'bbb', 'ccc'}" var="x">
			<s:property value="#x.toUpperCase()"/> |
		</s:iterator>
		</li>
		<li>使用status:<br />
		<s:iterator value="{'aaa', 'bbb', 'ccc'}" status="status">
			<s:property/> | 
			遍历过的元素总数：<s:property value="#status.count"/> |
			遍历过的元素索引：<s:property value="#status.index"/> |
			当前是偶数？：<s:property value="#status.even"/> |
			当前是奇数？：<s:property value="#status.odd"/> |
			是第一个元素吗？：<s:property value="#status.first"/> |
			是最后一个元素吗？：<s:property value="#status.last"/>
			<br />
		</s:iterator>
		
		</li>
		
		<li>
		<s:iterator value="#{1:'a', 2:'b', 3:'c'}" >
			<s:property value="key"/> | <s:property value="value"/> <br />
		</s:iterator>
		</li>
		
		<li>
		<s:iterator value="#{1:'a', 2:'b', 3:'c'}" var="x">
			<s:property value="#x.key"/> | <s:property value="#x.value"/> <br />
		</s:iterator>
		</li>
		
		<li>
		<s:fielderror fieldName="fielderror.test" theme="simple"></s:fielderror>
		</li>
	</ol>
  </body>
</html>
