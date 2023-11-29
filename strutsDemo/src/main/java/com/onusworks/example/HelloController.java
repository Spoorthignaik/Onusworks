package com.onusworks.example;

import javax.servlet.ServletRequest;

import javax.servlet.ServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class HelloController extends Action{
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, ServletRequest req, ServletResponse resp)
			throws Exception {
		
		
		String name= req.getParameter("name");
		
		req.setAttribute("res", "hello...."+name);
		return mapping.findForward("success");
	}

}
