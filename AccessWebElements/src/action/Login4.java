package action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.interceptor.ServletRequestAware;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class Login4 extends ActionSupport implements ServletRequestAware {
	
	private HttpServletRequest request;
	private HttpSession  session;
	private ServletContext  application;
	
	public String execute() {
		request.setAttribute("RequestName", "request4");
		session.setAttribute("SessionName", "session4");
		application.setAttribute("ApplicationName", "application4");
		return SUCCESS; 
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		this.session = request.getSession();
		this.application = session.getServletContext();
	}
	
}

