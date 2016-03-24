package action;

import java.util.Map;

import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class Login2 extends ActionSupport implements RequestAware,SessionAware,ApplicationAware{
	

	private Map<String, Object> request;
	private Map<String, Object>  session;
	private Map<String, Object>  application;
	
	public String execute() {
		request.put("RequestName", "request2");
		session.put("SessionName", "session2");
		application.put("ApplicationName", "application2");
		return SUCCESS; 
	}
	@Override
	public void setRequest(Map<String, Object>  request) {
		this.request=request;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session=session;
	}

	@Override
	public void setApplication(Map<String, Object> application) {
		this.application=application;	
	}

}
