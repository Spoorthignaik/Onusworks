package beans;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

public class LoginForm extends ActionForm {

	private String uname;
	private String pwd;
	private String role;

	public LoginForm() {
		// TODO Auto-generated constructor stub
	}

	public String getUname() {
		return uname;
	}

	public String getPwd() {
		return pwd;
	}

	public String getRole() {
		return role;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
		// TODO Auto-generated method stub

		ActionErrors ae = new ActionErrors();
		if (uname.equals(""))
			ae.add("uname", new ActionMessage("msg1"));
		if (pwd.equals(""))
			ae.add("pwd", new ActionMessage("msg2"));
		if (role.equals(""))
			ae.add("role", new ActionMessage("msg3"));
		return ae;
	}
}
