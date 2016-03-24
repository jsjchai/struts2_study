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
    
    <title>post</title>
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
	String strid=request.getParameter("id");
	/*
	String[] str=strid.split("#");
	for(String s : str){
	  System.out.println(s);
	}
	*/
	strid=strid.replace("#reply","");
	ArrayList<BBSBean> al=null;
	int id=0;
	String title=null;
	ForumCI fc=new ForumCI();
	if(strid!=null){
	  id=Integer.parseInt(strid);
	  al=fc.post(id);
	  title=fc.getTitle(id);
	}
%>
<div>
<table width="100%" border="0">
    <tr>
        <td width="79%"><%=title %></td>
<% 
	String u=(String)session.getAttribute("uname");
	if(u!=null){
		if(u.equals(fc.getName(id))){
%>
        <td width="21%" align="right"><a href="del.jsp?rootid=<%=id %>">删除</a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
      <%}} %>
    </tr>
</table>
<br />
<%
	if(al!=null){
		for(int i=0;i<al.size();i++){
			BBSBean bs=al.get(i);
			String floor=(i==0?"楼主":(i+1)+"楼");
 %>
<table width="100%"  style="border:groove;">
	<tr>
    	<td width="15%" height="113" align="center" style="border-right-style:groove;" ><img src="images/head_80.jpg" alt="" border="0" /><br/><br/><span><%=bs.getName() %></span></td>
        <td>
       	  <p ><%=bs.getCont() %></p><br /><br /><br /><br><br><hr />
           <p style="text-align:right;">
           <%=floor%>&nbsp;&nbsp;<%=new java.text.SimpleDateFormat("YYYY-MM-dd HH:mm:ss").format(bs.getPdate()) %>
           <a href="forumpost.jsp?id=<%=id %>#reply" >回复</a>
           </p>
      </td>
    </tr>
</table>
<%} }%>
</div>
<hr>

<a name="reply">回复本帖</a><br><br><center>
<%--
    String basePath1= request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
     String url=basePath1;
     //System.out.println(url);
 --%>
 <form action="replyDeal.jsp?rootid=<%=id %>"  method="post">
   <textarea rows="15" cols="90" name="cont"></textarea><br><br>
  <input type="submit" value="提交"> 
  </form>
  </center>
  </body>
</html>
