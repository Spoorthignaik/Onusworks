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
		String name=formi.getName();
		String email=formi.getEmail();
		String place=formi.getPlace();
		String age=formi.getAge();
		String pincode=formi.getPincode();

		
		ResultSet rs = dao.LoginSelf(formi, request, response);
		//if(rs.next())
		session.setAttribute("id", rs.getString(1));
		session.setAttribute("name", rs.getString(2));
		session.setAttribute("email", rs.getString(3));
		session.setAttribute("place", rs.getString(4));
		session.setAttribute("age", rs.getString(5));
		session.setAttribute("pincode", rs.getString(6));
		

		return mapping.findForward("success");
	}	

}
