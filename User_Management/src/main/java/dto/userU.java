package dto;

public class userU 
{

	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	private int oldid;
	private int id;
	private String name;
	private String email;
	private String country;
	private String password;
	
	
	public userU(int oldid, int id, String name, String email, String country,String password) {
		super();
		this.oldid = oldid;
		this.id = id;
		this.name = name;
		this.email = email;
		this.country = country;
		this.password = password;
	}


	public userU() {
		// TODO Auto-generated constructor stub
	}	
	
	public int getOldid() {
		return oldid;
	}


	public void setOldid(int oldid) {
		this.oldid = oldid;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
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


	public String getCountry() {
		return country;
	}


	public void setCountry(String country) {
		this.country = country;
	}


}
