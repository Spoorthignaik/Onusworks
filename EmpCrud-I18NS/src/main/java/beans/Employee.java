package beans;

import org.apache.struts.action.ActionForm;

public class Employee extends ActionForm {

	private int id;
	private String name;
	private String email;
	private String address;

	public Employee() {
		System.out.println("Created Employee...");
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getAddress() {
		return address;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setAddress(String address) {
		this.address = address;
	}

}