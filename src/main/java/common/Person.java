package common;
//데이터저장객체 : DTO (VO)
public class Person {
	
	private String name;
	private int age;
	
	public Person() {}

	public Person(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	}
	
	
	public String getName() {
		return name;
	}

	

	public void setName(String name) {
		this.name = name;
	}

	

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
  
}
