package action;

public class Cat {
	
	private Dog friend;
	/*
	public Cat(){
		
		System.out.println("friend!");
	}
	*/
	public Dog getFriend() {
		return friend;
	}

	public void setFriend(Dog friend) {
		this.friend = friend;
	}

	public String miaomiao() {
		return "miaomiao";
	}
}
