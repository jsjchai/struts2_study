package action;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class UserAction extends ActionSupport{
	
	private int type;

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}
	@Override
	public String execute() throws Exception {
		if(type==1)
			return SUCCESS;
		else if(type==2)
			return ERROR;
		else
			return "mainpage";
	}
}
