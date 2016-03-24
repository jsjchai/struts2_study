package struts2_helloworld;

import com.opensymphony.xwork2.ActionSupport;

public class Helloworld extends ActionSupport{

	private static final long serialVersionUID = -4322791908538967628L;

	@Override
	public String execute() throws Exception {
		System.out.println("hello,world");
		return SUCCESS;
	}
	
}
