package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import dao.UpdateDao;
import dto.InsertBean;

public class UpdateAction extends Action
{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception 
	{
		// TODO Auto-generated method stub
		
		HttpSession session=request.getSession(true);
		
		UpdateDao dao=new UpdateDao();
		
		InsertBean formi=(InsertBean) form;
		dao.LoginSelf(formi);
		
		String oldid=formi.getOldid();
		String id=formi.getId();
		String name=formi.getName();
		String email=formi.getEmail();
		String place=formi.getPlace();
		String age=formi.getAge();
		String pincode=formi.getPincode();
			
	
		session.setAttribute("oldid", oldid);
		session.setAttribute("id", id);
		session.setAttribute("name", name);
		session.setAttribute("email", email);
		session.setAttribute("place", place);
		session.setAttribute("age", age);
		session.setAttribute("pincode", pincode);
		
		if(oldid.equals("")||id.equals("")||name.equals("")||email.equals("")
				||place.equals("")||age.equals("")||pincode.equals(""))
			return mapping.findForward("error");
		else
			return mapping.findForward("success");
		
	}	

}
