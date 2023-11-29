package com.onusworks.example;

import javax.servlet.ServletRequest;

import javax.servlet.annotation.WebServlet;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

@WebServlet("/")
public class Hello extends ActionForm {

	private String name;

	public void setName(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}

	@Override
	public ActionErrors validate(ActionMapping arg0, ServletRequest req) {

		ActionErrors ae = new ActionErrors();
		if (name.equals(""))
			ae.add("name", new ActionMessage("msg"));
		return ae;

	}

}
