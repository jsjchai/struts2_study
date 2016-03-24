package action;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class AdminAction extends ActionSupport{

	@Override
	public String execute() throws Exception {
		return "mainpage";
	}

}
