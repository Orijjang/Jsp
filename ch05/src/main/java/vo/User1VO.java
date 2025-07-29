package vo;

public class User1VO {

	private String user_id;
	private String name;
	private String hp;
	private int age;
	
	@Override
	public String toString() {
		return "User1VO [user_id=" + user_id + ", name=" + name + ", hp=" + hp + ", age=" + age + "]";
	}
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
}
