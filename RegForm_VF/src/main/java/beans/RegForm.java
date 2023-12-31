package beans;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.validator.ValidatorForm;

public class RegForm extends ValidatorForm {

	private int id;
	private long phone;
	private String creditcard;
	private float salary;
	private String name;
	private String email;
	 // ActionErrors errors;

	public RegForm() {
		System.out.println("Created RegForm object");
	}

	public int getId() {
		return id;
	}

	public long getPhone() {
		return phone;
	}

	public String getCreditcard() {
		return creditcard;
	}

	public float getSalary() {
		return salary;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setPhone(long phone) {
		this.phone = phone;
	}

	public void setCreditcard(String creditcard) {
		this.creditcard = creditcard;
	}

	public void setSalary(float salary) {
		this.salary = salary;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
