<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
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
	<form>
		��&nbsp;��&nbsp;��:<input id="user" type="text" onblur="validate()" />
		<span id="d"></span><br>
		��&nbsp;&nbsp;&nbsp;&nbsp;��:<input type="password" /><br> 
		ȷ������:<input type="password" />
	</form>
	<script>
		var req = null;
		function validate() {
			var obj = document.getElementById("user");
			var url = "validate.jsp?id="+escape(obj.value);
			if (window.XMLHttpRequest) {  
				req = new XMLHttpRequest();
			} 
			if (window.ActiveXObject) {
				req = new ActiveXObject("Microsoft.XMLHTTP");
			}
			req.open("GET", url, true);
			req.onreadystatechange = callback;
			req.send(null);
		}
		function callback() {
			if(req.readyState==4){
				if(req.status==200){
					var mvalue=req.responseXML.getElementsByTagName("msg")[0];
				    //alert(mvalue.childNodes[0].nodeValue);
				    setMsgt(mvalue.childNodes[0].nodeValue);
				}
			}
		}
		function setMsgt(m)
		{
			var dobj=document.getElementById("d");
			if(m=="invalid")
				dobj.innerHTML="<font color='red'>�û�������</font>";
			else
				dobj.innerHTML="<font color='green'>��ȷ</font>";
		}
	</script>
</body>
</html>
