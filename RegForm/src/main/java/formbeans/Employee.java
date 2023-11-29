package formbeans;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

public class Employee extends ActionForm {

	private int id;
	private String name;
	private String email;
	private String address;
	private String gender;
	private String[] hobbies;

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

	public String getGender() {
		return gender;
	}

	public String[] getHobbies() {
		return hobbies;
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

	public void setGender(String gender) {
		this.gender = gender;
	}

	public void setHobbies(String[] hobbies) {
		this.hobbies = hobbies;
	}

	@Override
	public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {

		ActionErrors ae = new ActionErrors();
		if (id == 0)
			ae.add("id_e", new ActionMessage("msg1"));
		if (name.equals(""))
			ae.add("name_e", new ActionMessage("msg2"));
		if (email.equals(""))
			ae.add("email_e", new ActionMessage("msg3"));
		if (address.equals(""))
			ae.add("address_e", new ActionMessage("msg4"));
		if (gender.equals(""))
			ae.add("gender_e", new ActionMessage("msg5"));
		if (hobbies.length < 1)
			ae.add("hobbies_e", new ActionMessage("msg6"));
		return ae;
	}

}
