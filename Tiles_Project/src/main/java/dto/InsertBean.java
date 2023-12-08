package dto;

import org.apache.struts.action.ActionForm;

public class InsertBean extends ActionForm
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String oldid;
	private String id;
	private String name;
	private String email;
	private String place;
	private String age;
	private String pincode;

	
	public String getOldid() {
		return oldid;
	}


	public void setOldid(String oldid) {
		this.oldid = oldid;
	}

	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPlace() {
		return place;
	}


	public void setPlace(String place) {
		this.place = place;
	}


	public String getAge() {
		return age;
	}


	public void setAge(String age) {
		this.age = age;
	}


	public String getPincode() {
		return pincode;
	}


	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	

}
