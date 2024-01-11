package controller;

import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import dao.SelectDao;
import dto.InsertBean;

public class SelectAction extends Action
{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception 
	{
		// TODO Auto-generated method stub
		
		HttpSession session=request.getSession(true);
		
		SelectDao dao =new SelectDao();
		
		InsertBean formi=(InsertBean) form;
		//dao.LoginSelf(formi);
		String id=formi.getId();
	
		session.setAttribute("id", id);
		ResultSet rs = dao.LoginSelf(formi);
		//if(rs.next())
		session.setAttribute("name", rs.getString(2));
		return mapping.findForward("success");
	}	

}
