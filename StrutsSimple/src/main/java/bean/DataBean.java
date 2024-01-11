package bean;

import org.apache.struts.action.ActionForm;

public class DataBean extends ActionForm 
{

	private String hello;
	
	
	public DataBean(String hello) {
		super();
		this.hello = hello;
	}

	public String getHello() {
		return hello;
	}

	public void setHello(String hello) {
		this.hello = hello;
	}
	

}
