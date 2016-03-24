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
		<li>property ȡֵΪ�ַ���: <s:property value="'username'"/> </li>
		<li>property �趨Ĭ��ֵ: <s:property value="admin" default="����Ա"/> </li>
		<!-- escape=flase ����Ϊhtml���� -->
		<li>property �趨HTML: <s:property value="'<hr>'" escape="true"/></li>
		
		<li>set �趨adminNameֵ��Ĭ��Ϊrequest �� ActionContext��: <s:set var="adminName" value="username" /></li>
		
		<li>set ��requestȡֵ: <s:property value="#request.adminName" /></li>
		<li>set ��ActionContextȡֵ: <s:property value="#adminName" /></li>
		
		<li>set �趨��Χ: <s:set name="adminPassword" value="password" scope="page"/></li>
		<li>set ����Ӧ��Χȡֵ: <%=pageContext.getAttribute("adminPassword") %></li>

		<li>set �趨var����ΧΪActionContext: <s:set var="adminPassword" value="password" scope="ActionContext"/></li>
		<!-- scope="session"�޷��ô˷���ȡֵ-->
		<li>set ʹ��#ȡֵ: <s:property value="#adminPassword"/> </li>
		
		<li>set ����Ӧ��Χȡֵ: <s:property value="#session.adminPassword"/> </li>
		
		<%--<li>push:<s:set name="myDog" value="action.Dog('oudy')"></s:set></li>
		<li>
		push:<s:push value="#myDog">
			<s:property value="name"/>
		</s:push>
		</li>
		<li>push: <s:property value="name"/></li>
		--%>
		
		<li>bean ����bean,��ʹ��param���趨�µ�����ֵ:
			<s:bean name="action.Dog" >
			<!-- dog�������name��ֵ -->
				<s:param name="name" value="'dd1'"></s:param>
				<s:property value="name"/>		
			</s:bean>
		</li>
		
		<!-- var--actioncontext -->
		<li>bean �鿴debug���:<br>
			<s:bean name="action.Dog" var="d">
				<s:param name="name" value="'dd2'"></s:param>
			</s:bean>
			�ó�ֵ(����s:bean)��
			<s:property value="#d.name"/>
		</li>
		
		<li>include�� include1.html ������̬Ӣ���ļ�
		<s:include value="/include1.html"></s:include>
		</li>
		
		<li>include include2.html ������̬�����ļ�
		<s:include value="/include2.html"></s:include>
		</li>
		
		<li>include include1.html ������̬Ӣ���ļ���˵��%�÷�
		<s:set var="incPage" value="'/include1.html'" />
		<s:include value="%{#incPage}"></s:include>
		</li>
		
		
		<li>if elseif else: 
		<!--parameters--Stack Context url�������Ĳ���  -->
		age= <s:property value="#parameters.age" /> <br>
		age = <s:property value="#parameters.age[0]" /> <br>
		<s:set var="age" value="#parameters.age[0]" />
		<s:if test="#age < 0">wrong age!</s:if>
		<s:elseif test="#parameters.age[0] < 20">too young!</s:elseif>
		<s:else>yeah!</s:else><br />
		<s:debug></s:debug>
		<s:if test="#parameters.aaa == null">null</s:if>
		</li>
		 
		 
		 <li>�������ϣ�<br />
		<s:iterator value="{1, 2, 3}" >
			<s:property/> |
		</s:iterator>
		</li>
		<li>�Զ��������<br />
		<s:iterator value="{'aaa', 'bbb', 'ccc'}" var="x">
			<s:property value="#x.toUpperCase()"/> |
		</s:iterator>
		</li>
		<li>ʹ��status:<br />
		<s:iterator value="{'aaa', 'bbb', 'ccc'}" status="status">
			<s:property/> | 
			��������Ԫ��������<s:property value="#status.count"/> |
			��������Ԫ��������<s:property value="#status.index"/> |
			��ǰ��ż������<s:property value="#status.even"/> |
			��ǰ����������<s:property value="#status.odd"/> |
			�ǵ�һ��Ԫ���𣿣�<s:property value="#status.first"/> |
			�����һ��Ԫ���𣿣�<s:property value="#status.last"/>
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
