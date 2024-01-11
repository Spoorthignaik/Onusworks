package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionForward;

import dao.LoginDao;
import dto.LoginBean;
public class LoginAction extends Action
{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception 
	{
		// TODO Auto-generated method stub
		LoginDao login = new LoginDao();
		boolean isValidUser = login.LoginSelf((LoginBean)form);
		if(isValidUser)
			return mapping.findForward("success");
		else
			return mapping.findForward("failure");
		
	}	
}
