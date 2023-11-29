package beans;

import org.apache.struts.action.ActionForm;

public class HelloWorld extends ActionForm{
	public String getHello() {
		return hello;
	}

	public void setHello(String hello) {
		this.hello = hello;
	}

	private String hello;

}

