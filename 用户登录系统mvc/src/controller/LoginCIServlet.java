package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.StudentBeanCI;

@SuppressWarnings("serial")
public class LoginCIServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//得到用户名
		String u=request.getParameter("username");
		//得到密码
		String p=request.getParameter("pw");
		StudentBeanCI sbc=new StudentBeanCI();
		//判断用户名和密码是否正确
		if(sbc.check(u, p)){
			//将用户名转发到Wel.jsp
			request.setAttribute("un",u);
			//response.sendRedirect("Wel.jsp");
			//转发-效率高，同时request中的对象还可以在一页面使用
			request.getRequestDispatcher("Wel.jsp").forward(request, response);
		}
		else{
			request.getRequestDispatcher("Login.jsp").forward(request, response);
		}
	}

}
