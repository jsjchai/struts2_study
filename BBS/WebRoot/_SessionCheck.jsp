<%
	String u=(String)session.getAttribute("uname");
	if(u==null){
		response.sendRedirect("Login.jsp");
		return;
	}
%>