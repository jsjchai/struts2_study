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
    <title>javaBBS</title>
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
<%
	String key=request.getParameter("text");
	if(key==null||key.trim().equals("")){
		response.sendRedirect("forum.jsp");
		return;
	}
%>
<table width="100%">
<tr>
<td ><a href="newpost.jsp">发表新帖</a></td>
<td align="center">
<form action="search.jsp" method="post" name="f">
   <input type="text" name="text" value="<%=key%>">&nbsp;&nbsp;<input type="submit" value="搜索帖子">
</form>
</td>
<%
	String username=(String)session.getAttribute("uname");
	if(username!=null){
 %>
<td align="right"><a ><%=username %></a>&nbsp;&nbsp; <a href="quit.jsp">退出登录</a></td>
<%
   }
   else{
   %>
   <td align="right"><a href="Login.jsp">登录</a>&nbsp;&nbsp;<a href="register.jsp">注册</a></td>
   <% 
   }
 %>
</tr>
</table>
<hr />
<div>
<table width="100%" cellspacing="0" >
     <tr id="frist"  >
  	  <td width="12%">回复</td><td width="58%">主题</td><td width="13%">作者</td><td width="17%">发帖时间</td>
     </tr> 
<%
	int pageNow=1;//希望显示第几页
	String strpn=request.getParameter("pageNow");
	if(strpn!=null&&!strpn.trim().equals("")){
		pageNow=Integer.parseInt(strpn);
	}
	ForumCI fc=new ForumCI();
	ArrayList<BBSBean> al=fc.search(pageNow, key);
 	for(Iterator<BBSBean> it=al.iterator();it.hasNext();){
                 	  	BBSBean bs=it.next();
 %>
    <tr >
      <td height="40" align="center"><%=fc.getreplytime(bs.getRootid()) %></td>
      <td ><li><a href="forumpost.jsp?id=<%=bs.getId()%>"><%=bs.getTitle()%></a></li></td>
      <td align="center"><%=bs.getName() %></td>
      <td align="center"><%=new java.text.SimpleDateFormat("YYYY-MM-dd HH:mm:ss").format(bs.getPdate()) %></td>
<%} %>      
    </tr>
  </table>
  <hr />
</div>
<center>
<%
	    int pageCount=fc.getCount();
        int j=10;
        int i=1;
        if(pageNow/5>1){
        	i=(pageNow-(pageNow%5))-5;;
        	j=(pageNow-(pageNow%5))+5;;
        }
        if(j>pageCount){
        	j=pageCount;
        }
        if(pageNow!=1){
        %>
        <a href="forum.jsp?pageNow=<%=(pageNow-1)%>">上一页</a>
        <% 
        }
        
        for(;i<=j;i++){
      %>
        <a href="forum.jsp?pageNow=<%=i%>"><%=i %></a>
       <%
       } 
       if(pageNow!=pageCount){
        %>
        <a href="forum.jsp?pageNow=<%=(pageNow+1)%>">下一页</a>
        <% 
        }
       %> 
</center>
  </body>
</html>
