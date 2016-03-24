package action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class Login1 extends ActionSupport {

	private Map<String, Object> request;
	private Map<String, Object>  session;
	private Map<String, Object>  application;
	@SuppressWarnings("unchecked")
	public Login1(){
		request= (Map<String, Object>) ActionContext.getContext().get("request");
		session=ActionContext.getContext().getSession();
		application=ActionContext.getContext().getApplication();
	}
	
	public String execute() {
		request.put("RequestName", "request1");
		session.put("SessionName", "session1");
		application.put("ApplicationName", "application1");
		return SUCCESS; 
	}
}
