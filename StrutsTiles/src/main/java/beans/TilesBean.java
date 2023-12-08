package beans;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

public class TilesBean extends ActionForm{
	
	private String name;
	private String email;
	private String address;
	public String getName() {
		return name;
	}
	public String getEmail() {
		return email;
	}
	public String getAddress() {
		return address;
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
	
	
	@Override
	public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
		ActionErrors ae = new ActionErrors();

		if (name.equals(""))
			ae.add("name", new ActionMessage("msg1"));
		if (email.equals(""))
			ae.add("email", new ActionMessage("msg2"));
		if (address.equals(""))
			ae.add("id", new ActionMessage("msg3"));
		
		
		return ae;
	}

}
