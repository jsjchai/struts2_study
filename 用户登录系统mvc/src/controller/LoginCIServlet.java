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
		//�õ��û���
		String u=request.getParameter("username");
		//�õ�����
		String p=request.getParameter("pw");
		StudentBeanCI sbc=new StudentBeanCI();
		//�ж��û����������Ƿ���ȷ
		if(sbc.check(u, p)){
			//���û���ת����Wel.jsp
			request.setAttribute("un",u);
			//response.sendRedirect("Wel.jsp");
			//ת��-Ч�ʸߣ�ͬʱrequest�еĶ��󻹿�����һҳ��ʹ��
			request.getRequestDispatcher("Wel.jsp").forward(request, response);
		}
		else{
			request.getRequestDispatcher("Login.jsp").forward(request, response);
		}
	}

}
