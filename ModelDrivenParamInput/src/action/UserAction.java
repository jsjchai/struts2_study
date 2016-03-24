package action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import model.UserBean;

@SuppressWarnings("serial")
public class UserAction extends ActionSupport implements ModelDriven<UserBean>{

	private UserBean user=new UserBean();
	public String add(){
		System.out.println("name="+user.getName());
		System.out.println("age="+user.getAge());
		return SUCCESS;
	}
	@Override
	public UserBean getModel() {
		return user;
	}
	
}
