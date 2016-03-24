package action;

import com.opensymphony.xwork2.ActionSupport;
import model.UserBean;

@SuppressWarnings("serial")
public class UserAction extends ActionSupport {

	private UserBean user;
	public String add(){
		System.out.println("name="+user.getName());
		System.out.println("age="+user.getAge());
		return SUCCESS;
	}
	public UserBean getUser() {
		return user;
	}
	public void setUser(UserBean user) {
		this.user = user;
	}
	
}
