package dto;

/*
	DTO(Data Transfer Object)
	 - 컴포넌트(Controller, Service, DAO)간 데이터 이동 객체
	 - DB 테이블 인스턴스(Row or Entity) 객체
	 - VO(Value Object) 객체와 비슷
*/
public class User1DTO {
	
	private String user_id;
	private String name;
	private String hp;
	private int age;
	
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
	
	public void setAge(String age) {
		
		if(age != null) {			
			this.age = Integer.parseInt(age);						
		}		
	}
	
	
	@Override
	public String toString() {
		return "User1DTO [user_id=" + user_id + ", name=" + name + ", hp=" + hp + ", age=" + age + "]";
	}
	
	

}