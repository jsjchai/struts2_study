package action;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class UserAction extends ActionSupport {

	private String name;
	public String add(){
		if(name==null||!name.equals("admin")){
			this.addFieldError("name","name is error!");
			this.addFieldError("name","name is too long!");
			return ERROR;
		}
		return SUCCESS;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	
}
