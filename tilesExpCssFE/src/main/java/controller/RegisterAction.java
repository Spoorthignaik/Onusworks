package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import dao.RegisterDao;
import dto.RegisterBean;

public class RegisterAction extends Action
{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception 
	{
		// TODO Auto-generated method stub
		
		HttpSession session=request.getSession(true);
		
		RegisterDao dao=new RegisterDao();
		
		RegisterBean formi=(RegisterBean) form;
		dao.LoginSelf(formi);
		String username=formi.getUsername();
		String password=formi.getPassword();
		
			
	
		session.setAttribute("username", username);
		session.setAttribute("password", password);
		
		
		if(username.equals("")||password.equals(""))
			return mapping.findForward("error");
		else
			return mapping.findForward("success");
		
	}	

}
