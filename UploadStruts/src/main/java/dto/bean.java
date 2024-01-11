package dto;

import javax.servlet.http.Part;

import org.apache.commons.validator.Form;
import org.apache.struts.action.ActionForm;

public class bean extends ActionForm
{
	
	
	  public Part getPhoto() {
		  return photo; 
	  }
	  public void setPhoto(Part photo) {
	  this.photo = photo; 
	  }
	 
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	private String username;
	private String password;
	private Part photo;
	
	
}
