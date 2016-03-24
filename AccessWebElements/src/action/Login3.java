package action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class Login3 extends ActionSupport {

	private HttpServletRequest request;
	private HttpSession  session;
	private ServletContext  application;
	public Login3(){
		request= ServletActionContext.getRequest();
		session=request.getSession();
		application= ServletActionContext.getServletContext();;
	}
	
	public String execute() {
		request.setAttribute("RequestName", "request3");
		session.setAttribute("SessionName", "session3");
		application.setAttribute("ApplicationName", "application3");
		return SUCCESS; 
	}
}
