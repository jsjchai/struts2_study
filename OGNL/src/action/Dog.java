package action;

public class Dog {
	
	private String name;
	
	//�����д˹��췽��  ����cat.friend.name�޷��õ�ֵ
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
