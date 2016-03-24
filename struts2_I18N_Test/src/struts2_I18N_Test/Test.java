package struts2_I18N_Test;

import java.util.Locale;
import java.util.ResourceBundle;

public class Test {

	public static void main(String[] args) {
		//ResourceBundle res = ResourceBundle.getBundle("app", Locale.US);
		ResourceBundle res = ResourceBundle.getBundle("struts2_I18N_Test/app", Locale.CHINA);
		System.out.println(res.getString("welcome.msg" ));
	}
}
