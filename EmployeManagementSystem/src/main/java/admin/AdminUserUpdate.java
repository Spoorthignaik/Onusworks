package admin;

import org.apache.struts.action.ActionForm;

public class AdminUserUpdate extends ActionForm {

	private String ouname;
	private String nuname;
	private String opwd;
	private String npwd;
	
	public AdminUserUpdate() {
		System.out.println("Created Admin User Update...");
	}

	public String getOuname() {
		return ouname;
	}

	public String getNuname() {
		return nuname;
	}

	public String getOpwd() {
		return opwd;
	}

	public String getNpwd() {
		return npwd;
	}

	public void setOuname(String ouname) {
		this.ouname = ouname;
	}

	public void setNuname(String nuname) {
		this.nuname = nuname;
	}

	public void setOpwd(String opwd) {
		this.opwd = opwd;
	}

	public void setNpwd(String npwd) {
		this.npwd = npwd;
	}
	
	

}
