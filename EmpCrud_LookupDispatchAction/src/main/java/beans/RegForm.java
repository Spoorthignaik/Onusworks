package beans;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

public class RegForm extends ActionForm {

	private int id;
	private String name;
	private String email;
	private float salary;

	public RegForm() {
		System.out.println("Created Reg Form Object");
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

	public float getSalary() {
		return salary;
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

	public void setSalary(float salary) {
		this.salary = salary;
	}

	@Override
	public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
		ActionErrors ae = new ActionErrors();

		if (name.equals(""))
			ae.add("name", new ActionMessage("msg1"));
		if (email.equals(""))
			ae.add("email", new ActionMessage("msg2"));
		if (id == 0)
			ae.add("id", new ActionMessage("msg3"));
		if (salary == 0.0)
			ae.add("salary", new ActionMessage("msg4"));
		
		return ae;
	}
}
