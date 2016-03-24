package action;

import com.opensymphony.xwork2.ActionSupport;
import java.util.*;

@SuppressWarnings("serial")
public class OgnlAction extends ActionSupport {

	private String username;
	private String password;
	private User user=new User(20);
	private Cat cat;
	private List<User> u=new LinkedList<User>();
	private Set<Dog> ds=new HashSet<Dog>();
	private Map<String,Dog> dm=new HashMap<String,Dog>();
	
	public OgnlAction(){
		u.add(new User(10));
		u.add(new User(20));
		u.add(new User(30));
		ds.add(new Dog("dog1"));
		ds.add(new Dog("dog2"));
		ds.add(new Dog("dog3"));
		dm.put("dog4",new Dog("dog4"));
		dm.put("dog5",new Dog("dog5"));
		dm.put("dog6",new Dog("dog6"));
	}
 	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Cat getCat() {
		return cat;
	}

	public void setCat(Cat cat) {
		this.cat = cat;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public List<User> getU() {
		return u;
	}
	public void setU(List<User> u) {
		this.u = u;
	}
	public Set<Dog> getDs() {
		return ds;
	}
	public void setDs(Set<Dog> ds) {
		this.ds = ds;
	}
	public Map<String, Dog> getDm() {
		return dm;
	}
	public void setDm(Map<String, Dog> dm) {
		this.dm = dm;
	}
	public String m(){
		return "m method";
	}
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}
}
