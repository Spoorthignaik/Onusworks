package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import dao.DeleteDao;
import dto.InsertBean;

public class DeleteAction extends Action
{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception 
	{
		// TODO Auto-generated method stub
		
		HttpSession session=request.getSession(true);
		
		DeleteDao dao=new DeleteDao();
		
		InsertBean formi=(InsertBean) form;
		dao.LoginSelf(formi);
		String id=formi.getId();
	
		session.setAttribute("id", id);

		if(id.equals(""))
			return mapping.findForward("error");
		else
			return mapping.findForward("success");
		
	}	

}