package action;

public class Dog {
	
	private String name;
	
	//必须有此构造方法  否则cat.friend.name无法得到值
	public Dog(){
		System.out.println("name="+name);
	}
	
	public Dog(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	@Override
	public String toString() {
		return "dog: " + name;
	}
}
